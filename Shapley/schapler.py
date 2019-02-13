import matplotlib.pyplot as plt
import numpy
from mpl_toolkits.mplot3d import Axes3D


def wyk3d (ahaha = None):

    fig = plt.figure()
    ax = fig.add_subplot(111, projection='3d')

    iksy = []
    igreky = []
    iksy_sz = []
    igreky_sz = []
    zety = []

    for x in range (1,101):             # x - cena kawy [1,100]

        for y in range(1,101):          #y - cena ciastka [1,100]

            for z in range(0,x+y):

                iksy.append( z * x / (x+y) )        #cena kawy z prop
                igreky.append( z * y / (x+y) )      #cena ciastka z prop

                iksy_sz.append((z - y + x )/ 2)                   #kawy z szapler 
                igreky_sz.append((z - x + y )/ 2)                  #ciastka z szapler

                zety.append(z)

    plt.plot(iksy,igreky,zety,c="blue",alpha=0.3,)
    plt.plot(iksy_sz,igreky_sz,zety,alpha = 0.3, c = "orange")

    plt.xlabel("kawusia")
    plt.ylabel("ciastko")
    # plt.zlabet("zestaw")

    plt.savefig("output3.png")

    return None

#TUTAJ

def przeskoki(nazwa, xmax = 5, ymax = 5):

    fig = plt.figure()

    z = 5

    for x in range (1,xmax+1):             

        for y in range(1,ymax+1):       
            
            plt.plot([x,z * x / (x+y)],[y,  z * y / (x+y)], c= "blue",alpha=0.2)
            plt.plot([x,(z - y + x) / 2], [y, (z - x + y) /2], c="orange",alpha=0.2 )
            plt.scatter(x,y, marker="*")

    plt.legend(["proporcje","shapley"])
    plt.savefig(nazwa, dpi = 200)

przeskoki("output7.png", 20, 20)