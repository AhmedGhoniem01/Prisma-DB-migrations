/*
  Warnings:

  - A unique constraint covering the columns `[socketID]` on the table `Robot` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE "Robot" ADD COLUMN     "socketID" VARCHAR(255);

-- CreateIndex
CREATE UNIQUE INDEX "Robot_socketID_key" ON "Robot"("socketID");
