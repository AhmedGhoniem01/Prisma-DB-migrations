/*
  Warnings:

  - Added the required column `dateReceived` to the `Job` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Job" ADD COLUMN     "dateReceived" TIMESTAMP(3) NOT NULL;
