from deap import base
from deap import creator
from deap import tools
from deap import algorithms

import random
import array

import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns

import tsp


# Semilla:
RANDOM_SEED = 42
random.seed(RANDOM_SEED)

TSP_NAME = "att48"                                           # Nombre del problema
tsp = tsp.TravelingSalesmanProblem(TSP_NAME)                 # Extrae la informacion del problema

# CONSTANTES:
Tam_Poblacion = 300
Maximas_Generaciones = 200
HallOfFame = 1
N_Padres = int(Tam_Poblacion/2)    # MU
N_Hijos = N_Padres*2               # LAMBDA
P_Cruce = 0.9
P_Mutacion = 0.1


creator.create("FitnessMin", base.Fitness, weights=(-1.0,))                             # Estrategia para minimizar
creator.create("Individual", array.array, typecode='i', fitness=creator.FitnessMin)     # Creacion de individuo tipo entero

toolbox = base.Toolbox()
toolbox.register("randomOrder", random.sample, range(len(tsp)), len(tsp))                            # Operador con indices aleatorios
toolbox.register("individualCreator", tools.initIterate, creator.Individual, toolbox.randomOrder)    # Crea un individuo con genoma aleatorio
toolbox.register("populationCreator", tools.initRepeat, list, toolbox.individualCreator)             # Crea poblacion con el anterior individuo

# Calcula la distancia entre puntos
def tpsDistance(individual):
    return tsp.getTotalDistance(individual),  # Devuelve una tupla


toolbox.register("evaluate", tpsDistance)

toolbox.register("select", tools.selTournament, tournsize=3)                    # Funcion de seleccion
toolbox.register("mate", tools.cxOrdered)                                       # Funcion de apareamiento
toolbox.register("mutate", tools.mutShuffleIndexes, indpb=1.0/len(tsp))         #Funcion de mutacion


def simple():
    poblacion = toolbox.populationCreator(n=Tam_Poblacion)                      # Crea la poblacion inicial (Generacion 0)

    hof = tools.HallOfFame(HallOfFame)                                          # Selecciona la mejor ruta

    # Parametros para estadisticas
    stats = tools.Statistics(lambda ind: ind.fitness.values)
    stats.register("min", np.min)                                 # Minimo
    stats.register("avg", np.mean)                                # Promedio

    # Algortimo genetico
    poblacion, logbook = algorithms.eaSimple(poblacion, toolbox, P_Cruce, P_Mutacion, Maximas_Generaciones, stats=stats, halloffame=hof, verbose=True)

    return poblacion, logbook, hof



def plus():
    poblacion = toolbox.populationCreator(n=Tam_Poblacion)                      # Crea la poblacion inicial (Generacion 0)

    hof = tools.HallOfFame(HallOfFame)                                          # Selecciona la mejor ruta

    # Parametros para estadisticas
    stats = tools.Statistics(lambda ind: ind.fitness.values)
    stats.register("min", np.min)                                 # Minimo
    stats.register("avg", np.mean)                                # Promedio

    # Algortimo genetico
    poblacion, logbook = algorithms.eaMuPlusLambda(poblacion, toolbox, N_Padres, N_Hijos, P_Cruce, P_Mutacion, Maximas_Generaciones, stats=stats, halloffame=hof, verbose=True)

    return poblacion, logbook, hof



def comma():
    poblacion = toolbox.populationCreator(n=Tam_Poblacion)                      # Crea la poblacion inicial (Generacion 0)

    hof = tools.HallOfFame(HallOfFame)                                          # Selecciona la mejor ruta

    # Parametros para estadisticas
    stats = tools.Statistics(lambda ind: ind.fitness.values)
    stats.register("min", np.min)                                 # Minimo
    stats.register("avg", np.mean)                                # Promedio

    # Algortimo genetico
    poblacion, logbook = algorithms.eaMuCommaLambda(poblacion, toolbox, N_Padres, N_Hijos, P_Cruce, P_Mutacion, Maximas_Generaciones, stats=stats, halloffame=hof, verbose=True)

    return poblacion, logbook, hof



def main():
    pop = []  # Poblacion
    log = []  # Logbook
    hof = []  # Hof
    algoritmos = [simple, plus, comma]
    titulos = ["eaSimple", "eaMuPlusLambda", "eaMuCommaLambda"]

    # Obtencion de datos
    for algoritmo in algoritmos:
        data1, data2, data3 = algoritmo()
        pop.append(data1)
        log.append(data2)
        hof.append(data3)

    # Grafica recorridos
    for i in range(3):
        plt.figure(1)
        plt.subplot(1, 3, i+1)
        best = hof[i].items[0]
        tsp.plotData(best)
        plt.title(titulos[i])
        print(titulos[i])
        print("-- Mejor individuo = ", best)
        print("-- Mejor estado = ", best.fitness.values[0])
        print("\n")


    # Grafica stats
    for j in range(3):
        plt.figure(2)
        plt.subplot(1, 3, j+1)
        minFitnessValues, meanFitnessValues = log[j].select("min", "avg")
        sns.set_style("whitegrid")
        plt.plot(minFitnessValues, color='red')
        plt.plot(meanFitnessValues, color='green')
        plt.xlabel('Generación')
        plt.title('Min/Avg ' + titulos[j])
        if j == 0:
            plt.ylabel('Minimo / Promedio')

    plt.show()

if __name__ == "__main__":
    main()
