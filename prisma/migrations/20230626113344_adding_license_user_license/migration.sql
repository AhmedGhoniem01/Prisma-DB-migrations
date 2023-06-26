-- CreateTable
CREATE TABLE "UserLicense" (
    "id" SERIAL NOT NULL,
    "adminID" INTEGER NOT NULL,
    "userID" INTEGER NOT NULL,
    "licenseID" INTEGER NOT NULL,
    "startDate" TIMESTAMP(3) NOT NULL,
    "endDate" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "UserLicense_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "License" (
    "id" SERIAL NOT NULL,
    "title" VARCHAR(50) NOT NULL,
    "maxTenants" INTEGER,
    "maxPackages" INTEGER,

    CONSTRAINT "License_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "UserLicense_userID_key" ON "UserLicense"("userID");

-- AddForeignKey
ALTER TABLE "UserLicense" ADD CONSTRAINT "UserLicense_adminID_fkey" FOREIGN KEY ("adminID") REFERENCES "UserAccount"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UserLicense" ADD CONSTRAINT "UserLicense_userID_fkey" FOREIGN KEY ("userID") REFERENCES "UserAccount"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UserLicense" ADD CONSTRAINT "UserLicense_licenseID_fkey" FOREIGN KEY ("licenseID") REFERENCES "License"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
