/*
  Warnings:

  - Added the required column `userID` to the `Job` table without a default value. This is not possible if the table is not empty.
  - Added the required column `externalID` to the `UserAccount` table without a default value. This is not possible if the table is not empty.
  - Added the required column `externalProvider` to the `UserAccount` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userType` to the `UserAccount` table without a default value. This is not possible if the table is not empty.
  - Made the column `password` on table `UserAccount` required. This step will fail if there are existing NULL values in that column.
  - Made the column `firstName` on table `UserAccount` required. This step will fail if there are existing NULL values in that column.
  - Made the column `lastName` on table `UserAccount` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE "Job" ADD COLUMN     "userID" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "UserAccount" ADD COLUMN     "adminID" INTEGER,
ADD COLUMN     "externalID" INTEGER NOT NULL,
ADD COLUMN     "externalProvider" VARCHAR(25) NOT NULL,
ADD COLUMN     "userType" VARCHAR(25) NOT NULL,
ALTER COLUMN "password" SET NOT NULL,
ALTER COLUMN "firstName" SET NOT NULL,
ALTER COLUMN "lastName" SET NOT NULL;

-- AddForeignKey
ALTER TABLE "UserAccount" ADD CONSTRAINT "UserAccount_adminID_fkey" FOREIGN KEY ("adminID") REFERENCES "UserAccount"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Job" ADD CONSTRAINT "Job_userID_fkey" FOREIGN KEY ("userID") REFERENCES "UserAccount"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
