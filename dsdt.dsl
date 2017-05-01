/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160831-64
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of dsdt.dat, Mon May  1 13:58:54 2017
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x00010CFA (68858)
 *     Revision         0x02
 *     Checksum         0x8D
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "EDK2    "
 *     OEM Revision     0x00000003 (3)
 *     Compiler ID      "CHV "
 *     Compiler Version 0x0100000D (16777229)
 */
DefinitionBlock ("", "DSDT", 2, "LENOVO", "EDK2    ", 0x00000003)
{
    /*
     * iASL Warning: There was 1 external control method found during
     * disassembly, but only 0 were resolved (1 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * To specify the tables needed to resolve external control method
     * references, the -e option can be used to specify the filenames.
     * Example iASL invocations:
     *     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     *     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     *     iasl -e ssdt*.aml -d dsdt.aml
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (_PR_.CPU0._PPC, UnknownObj)
    External (_SB_.TCHG, UnknownObj)
    External (_SB_.TPM_.CMOR, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (CFGD, UnknownObj)
    External (PDC0, UnknownObj)
    External (PDC1, UnknownObj)
    External (PDC2, UnknownObj)
    External (PDC3, UnknownObj)

    Method (ADBG, 1, Serialized)
    {
        Return (Zero)
    }

    Name (SP3O, 0x2E)
    Name (IO4B, 0x0A20)
    Name (IO4L, 0x20)
    Name (SP1O, 0x4E)
    Name (PMBS, 0x0400)
    Name (SMIP, 0xB2)
    Name (APCB, 0xFEC00000)
    Name (APCL, 0x1000)
    Name (PMCB, 0xFED03000)
    Name (PUNB, 0xFED06000)
    Name (IBAS, 0xFED08000)
    Name (SRCB, 0xFED1C000)
    Name (HPTB, 0xFED00000)
    Name (GBA0, 0xFED80000)
    Name (GBA1, 0xFED88000)
    Name (GBA2, 0xFED90000)
    Name (GBA3, 0xFED98000)
    Name (ABTR, 0xFEB00000)
    Name (PEBS, 0xE0000000)
    Name (PELN, 0x10000000)
    Name (FMBL, One)
    Name (FDTP, 0x02)
    Name (GCDD, One)
    Name (DSTA, 0x0A)
    Name (DSLO, 0x02)
    Name (DSLC, 0x03)
    Name (PITS, 0x10)
    Name (SBCS, 0x12)
    Name (SALS, 0x13)
    Name (LSSS, 0x2A)
    Name (PSSS, 0x2B)
    Name (SOOT, 0x35)
    Name (ESCS, 0x48)
    Name (SDGV, 0x1C)
    Name (ACPH, 0xDE)
    Name (ASSB, Zero)
    Name (AOTB, Zero)
    Name (AAXB, Zero)
    Name (PEHP, One)
    Name (SHPC, Zero)
    Name (PEPM, One)
    Name (PEER, One)
    Name (PECS, One)
    Name (ITKE, Zero)
    Name (FTBL, 0x04)
    Name (CHRB, 0x80)
    Name (CIRB, 0x82)
    Name (CRRB, 0x55)
    OperationRegion (GNVS, SystemMemory, 0x7717EA98, 0x0348)
    Field (GNVS, AnyAcc, Lock, Preserve)
    {
        OSYS,   16, 
        SMIF,   8, 
        P80D,   32, 
        REVS,   8, 
        OSID,   8, 
        ADED,   8, 
        BDID,   8, 
        FBID,   8, 
        STEP,   8, 
        SOCS,   8, 
        Offset (0x18), 
        APIC,   8, 
        MPEN,   8, 
        PPMF,   32, 
        PWRS,   8, 
        Offset (0x29), 
        IGDS,   8, 
        TLST,   8, 
        CADL,   8, 
        PADL,   8, 
        CSTE,   16, 
        NSTE,   16, 
        NDID,   8, 
        DID1,   32, 
        DID2,   32, 
        DID3,   32, 
        DID4,   32, 
        DID5,   32, 
        DID6,   32, 
        DID7,   32, 
        DID8,   32, 
        ASLB,   32, 
        IBTT,   8, 
        IPAT,   8, 
        ITVF,   8, 
        ITVM,   8, 
        IPSC,   8, 
        IBLC,   8, 
        IBIA,   8, 
        ISSC,   8, 
        IDMM,   8, 
        IDMS,   8, 
        IF1E,   8, 
        GSMI,   8, 
        PAVP,   8, 
        PVDR,   8, 
        BLCS,   8, 
        BRTL,   8, 
        ALSE,   8, 
        ALAF,   8, 
        LLOW,   8, 
        LHIH,   8, 
        ISPA,   32, 
        ISPD,   8, 
        RCAM,   8, 
        ECAM,   8, 
        NVGA,   32, 
        NVHA,   32, 
        AMDA,   32, 
        HGMD,   8, 
        GBAS,   32, 
        XBAS,   32, 
        HGGP,   8, 
        DLPW,   16, 
        DLHR,   16, 
        HRCO,   32, 
        HRPO,   32, 
        HRAI,   8, 
        PECO,   32, 
        PEPO,   32, 
        PEAI,   8, 
        CPSP,   32, 
        EECP,   8, 
        EVCP,   16, 
        RPBA,   32, 
        DIDX,   32, 
        EDPV,   8, 
        Offset (0xB6), 
        Offset (0xB7), 
        Offset (0xB8), 
        TPMA,   32, 
        TPML,   32, 
        DTPM,   8, 
        MORD,   8, 
        PPRP,   32, 
        PPRQ,   8, 
        LPPR,   8, 
        Offset (0xD2), 
        LPES,   8, 
        I0D3,   8, 
        I1D3,   8, 
        I2D3,   8, 
        I3D3,   8, 
        I4D3,   8, 
        I5D3,   8, 
        I6D3,   8, 
        CAMS,   8, 
        Offset (0xDC), 
        OTG0,   32, 
        OTG1,   32, 
        OTGM,   8, 
        LPE0,   32, 
        LPE1,   32, 
        LPE2,   32, 
        PFLV,   8, 
        XHCI,   8, 
        PMEN,   8, 
        USEL,   8, 
        BTHS,   8, 
        EMVR,   8, 
        GOAE,   8, 
        D10A,   32, 
        D10L,   32, 
        D11A,   32, 
        D11L,   32, 
        P10A,   32, 
        P10L,   32, 
        P11A,   32, 
        P11L,   32, 
        P20A,   32, 
        P20L,   32, 
        P21A,   32, 
        P21L,   32, 
        U10A,   32, 
        U10L,   32, 
        U11A,   32, 
        U11L,   32, 
        U20A,   32, 
        U20L,   32, 
        U21A,   32, 
        U21L,   32, 
        SP0A,   32, 
        SP0L,   32, 
        SP1A,   32, 
        SP1L,   32, 
        S20A,   32, 
        S20L,   32, 
        S21A,   32, 
        S21L,   32, 
        S30A,   32, 
        S30L,   32, 
        S31A,   32, 
        S31L,   32, 
        D20A,   32, 
        D20L,   32, 
        D21A,   32, 
        D21L,   32, 
        I10A,   32, 
        I10L,   32, 
        I11A,   32, 
        I11L,   32, 
        I20A,   32, 
        I20L,   32, 
        I21A,   32, 
        I21L,   32, 
        I30A,   32, 
        I30L,   32, 
        I31A,   32, 
        I31L,   32, 
        I40A,   32, 
        I40L,   32, 
        I41A,   32, 
        I41L,   32, 
        I50A,   32, 
        I50L,   32, 
        I51A,   32, 
        I51L,   32, 
        I60A,   32, 
        I60L,   32, 
        I61A,   32, 
        I61L,   32, 
        I70A,   32, 
        I70L,   32, 
        I71A,   32, 
        I71L,   32, 
        EM0A,   32, 
        EM0L,   32, 
        EM1A,   32, 
        EM1L,   32, 
        SI0A,   32, 
        SI0L,   32, 
        SI1A,   32, 
        SI1L,   32, 
        SD0A,   32, 
        SD0L,   32, 
        SD1A,   32, 
        SD1L,   32, 
        ISH0,   32, 
        ISH1,   32, 
        VS18,   16, 
        VD33,   16, 
        Offset (0x236), 
        Offset (0x238), 
        ITSA,   8, 
        S0IX,   8, 
        SDMD,   8, 
        ELLN,   8, 
        AUCD,   8, 
        BTMS,   8, 
        PMCT,   8, 
        PSSD,   8, 
        LWCP,   1, 
        LWEN,   1, 
        IOCP,   1, 
        IOEN,   1, 
        IOST,   1, 
        Offset (0x241), 
        Offset (0x249), 
        OSCC,   8, 
        NEXP,   8, 
        GPIC,   8, 
        L01C,   8, 
        MODS,   8, 
        PB1E,   8, 
        PSDE,   8, 
        ISCT,   8, 
        LIDS,   8, 
        DSEN,   8, 
        ECON,   8, 
        ACT1,   8, 
        ACTT,   8, 
        PSVT,   8, 
        TC1V,   8, 
        TC2V,   8, 
        TSPV,   8, 
        CRTT,   8, 
        DTSE,   8, 
        DTS1,   8, 
        DTS2,   8, 
        DTSF,   8, 
        CTYP,   8, 
        VFN0,   8, 
        STTV,   16, 
        BNUM,   8, 
        B0SC,   8, 
        B1SC,   8, 
        B0SS,   8, 
        B1SS,   8, 
        BCSL,   8, 
        DBAT,   8, 
        NATP,   8, 
        CMCP,   8, 
        CIRP,   8, 
        W381,   8, 
        DPTE,   8, 
        THM0,   8, 
        THM1,   8, 
        THM2,   8, 
        THM3,   8, 
        THM4,   8, 
        CHGR,   8, 
        DDSP,   8, 
        DSOC,   8, 
        DPSR,   8, 
        DPCT,   32, 
        DPPT,   32, 
        DGC0,   32, 
        DGP0,   32, 
        DGC1,   32, 
        DGP1,   32, 
        DGC2,   32, 
        DGP2,   32, 
        DGC3,   32, 
        DGP3,   32, 
        DGC4,   32, 
        DGP4,   32, 
        DLPM,   8, 
        DSC0,   32, 
        DSC1,   32, 
        DSC2,   32, 
        DSC3,   32, 
        DSC4,   32, 
        DDBG,   8, 
        LPOE,   32, 
        LPPS,   32, 
        LPST,   32, 
        LPPC,   32, 
        LPPF,   32, 
        DPME,   8, 
        WWEN,   8, 
        WWCR,   32, 
        WWPS,   32, 
        RSVD,   8, 
        ABS0,   8, 
        ABS1,   8, 
        ABS2,   8, 
        ABS3,   8, 
        ABS4,   8, 
        ABS5,   8, 
        AMTE,   8, 
        ABC0,   8, 
        ABC1,   8, 
        ABC2,   8, 
        ABC3,   8, 
        ABC4,   8, 
        ABC5,   8, 
        DPHL,   8, 
        DPLL,   8, 
        NFCS,   8, 
        BMBD,   32, 
        FSAS,   8, 
        WIFD,   8, 
        DPPP,   8, 
        DPCP,   8, 
        DPAP,   8, 
        DGA0,   32, 
        DGS0,   32, 
        DGH0,   32, 
        DGA1,   32, 
        DGS1,   32, 
        DGH1,   32, 
        DGA2,   32, 
        DGS2,   32, 
        DGH2,   32, 
        SAAT,   32, 
        SACT,   32, 
        SAST,   32, 
        SAHT,   32, 
        SAPT,   32, 
        SCDD,   8, 
        ISPE,   8, 
        PAVB,   32, 
        PAVL,   32, 
        DRMB,   64
    }

    Scope (_SB)
    {
        Name (PR00, Package (0x1A)
        {
            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x000AFFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x000BFFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x0010FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0011FFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0012FFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0013FFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0015FFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                Zero, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                0x03, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                0x03, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR00, Package (0x1A)
        {
            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x000AFFFF, 
                Zero, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x000BFFFF, 
                Zero, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x0010FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0011FFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0012FFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0013FFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                Zero, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0015FFFF, 
                Zero, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                Zero, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                0x03, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                Zero, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                Zero, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                0x03, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x10
            }
        })
        Name (PR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x11
            }
        })
        Name (PR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKC, 
                Zero
            }
        })
        Name (AR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x12
            }
        })
        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {3,4,5,6,10,11,12,14,15}
        })
        Alias (PRSA, PRSB)
        Alias (PRSA, PRSC)
        Alias (PRSA, PRSD)
        Alias (PRSA, PRSE)
        Alias (PRSA, PRSF)
        Alias (PRSA, PRSG)
        Alias (PRSA, PRSH)
        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08") /* PCI Express Bus */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03") /* PCI Bus */)  // _CID: Compatible ID
            Name (_ADR, Zero)  // _ADR: Address
            Method (^BN00, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
            {
                Return (BN00 ())
            }

            Name (_UID, Zero)  // _UID: Unique ID
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR00) /* \_SB_.AR00 */
                }

                Return (PR00) /* \_SB_.PR00 */
            }

            Device (CHVC)
            {
                Name (_ADR, Zero)  // _ADR: Address
                OperationRegion (HBUS, PCI_Config, Zero, 0xFF)
                Field (HBUS, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xD0), 
                    SMCR,   32, 
                    SMDR,   32, 
                    MCRX,   32, 
                    MCXX,   32
                }

                Method (RMBR, 2, Serialized)
                {
                    Local0 = ((Arg0 << 0x10) | (Arg1 << 0x08))
                    SMCR = (0x100000F0 | Local0)
                    Return (SMDR) /* \_SB_.PCI0.CHVC.SMDR */
                }

                Method (WMBR, 3, Serialized)
                {
                    SMDR = Arg2
                    Local0 = ((Arg0 << 0x10) | (Arg1 << 0x08))
                    SMCR = (0x110000F0 | Local0)
                }

                Method (RMBX, 6, Serialized)
                {
                    Local4 = (Arg3 & 0x07)
                    Local4 = (Local4 << 0x08)
                    Local5 = ((Arg4 << 0x03) | Arg5)
                    Local5 &= 0xFF
                    MCXX = (Local4 | Local5)
                    Local3 = (Arg1 & 0xFFFFFF00)
                    MCRX = Local3
                    Local0 = (Arg1 & 0xFF)
                    Local1 = ((Arg2 << 0x18) | (Arg0 << 0x10))
                    Local1 &= 0xFFFF0000
                    Local2 = ((Local0 << 0x08) | 0xF0)
                    Local2 &= 0xFFFF
                    SMCR = (Local1 | Local2)
                    Return (SMDR) /* \_SB_.PCI0.CHVC.SMDR */
                }

                Method (WMBX, 7, Serialized)
                {
                    Local4 = (Arg4 & 0x07)
                    Local4 = (Local4 << 0x08)
                    Local5 = ((Arg5 << 0x03) | Arg6)
                    Local5 &= 0xFF
                    MCXX = (Local4 | Local5)
                    Local3 = (Arg1 & 0xFFFFFF00)
                    MCRX = Local3
                    SMDR = Arg2
                    Local0 = (Arg1 & 0xFF)
                    Local1 = ((Arg3 << 0x18) | (Arg0 << 0x10))
                    Local1 &= 0xFFFF0000
                    Local2 = ((Local0 << 0x08) | 0xF0)
                    Local2 &= 0xFFFF
                    SMCR = (Local1 | Local2)
                }
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (FTSZ, 0x00100000)
                CreateDWordField (RES0, \_SB.PCI0._Y00._MIN, LPMN)  // _MIN: Minimum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y00._MAX, LPMX)  // _MAX: Maximum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y00._LEN, LPLN)  // _LEN: Length
                If ((LPE2 != Zero) && (LPED == Zero))
                {
                    LPMN = LPE2 /* \LPE2 */
                    LPMX = (LPMN + LPLN) /* \_SB_.PCI0._CRS.LPLN */
                    LPMX -= One
                }
                Else
                {
                    LPMN = Zero
                    LPMX = Zero
                    LPLN = Zero
                }

                CreateDWordField (RES0, \_SB.PCI0._Y01._MIN, ISMN)  // _MIN: Minimum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y01._MAX, ISMX)  // _MAX: Maximum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y01._LEN, ISLN)  // _LEN: Length
                If (ISPD == One)
                {
                    ISMN = ISPA /* \ISPA */
                    ISMX = (ISMN + ISLN) /* \_SB_.PCI0._CRS.ISLN */
                    ISMX -= One
                }
                Else
                {
                    ISMN = Zero
                    ISMX = Zero
                    ISLN = Zero
                }

                CreateDWordField (RES0, \_SB.PCI0._Y02._MIN, M1MN)  // _MIN: Minimum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y02._MAX, M1MX)  // _MAX: Maximum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y02._LEN, M1LN)  // _LEN: Length
                M1MN = (BMBD & 0xFF000000)
                M1LN = ((M1MX - M1MN) + One)
                CreateDWordField (RES0, \_SB.PCI0._Y03._MIN, F4MN)  // _MIN: Minimum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y03._MAX, F4MX)  // _MAX: Maximum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y03._LEN, F4LN)  // _LEN: Length
                If (TPMP == Zero)
                {
                    F4LN = Zero
                }

                Return (RES0) /* \_SB_.PCI0.RES0 */
            }

            Name (RES0, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    ,, )
                IO (Decode16,
                    0x0070,             // Range Minimum
                    0x0077,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x006F,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0070,             // Length
                    ,, , TypeStatic)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0078,             // Range Minimum
                    0x0CF7,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0C80,             // Length
                    ,, , TypeStatic)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0D00,             // Range Minimum
                    0xFFFF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0xF300,             // Length
                    ,, , TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E0000,         // Range Minimum
                    0x000FFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x20000000,         // Range Minimum
                    0x201FFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00200000,         // Length
                    ,, _Y00, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x7A000000,         // Range Minimum
                    0x7A3FFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00400000,         // Length
                    ,, _Y01, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x80000000,         // Range Minimum
                    0xDFFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x60000000,         // Length
                    ,, _Y02, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0xFED40000,         // Range Minimum
                    0xFED4BFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x0000C000,         // Length
                    ,, _Y03, AddressRangeMemory, TypeStatic)
            })
            Name (GUID, ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */)
            Name (SUPP, Zero)
            Name (CTRL, Zero)
            Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
            {
                Local0 = Arg3
                CreateDWordField (Local0, Zero, CDW1)
                CreateDWordField (Local0, 0x04, CDW2)
                CreateDWordField (Local0, 0x08, CDW3)
                If ((Arg0 == GUID) && NEXP)
                {
                    SUPP = CDW2 /* \_SB_.PCI0._OSC.CDW2 */
                    CTRL = CDW3 /* \_SB_.PCI0._OSC.CDW3 */
                    If (~(CDW1 & One))
                    {
                        If (CTRL & 0x02)
                        {
                            NHPG ()
                        }

                        If (CTRL & 0x04)
                        {
                            NPME ()
                        }
                    }

                    If (Arg1 != One)
                    {
                        CDW1 |= 0x08
                    }

                    If (CDW3 != CTRL)
                    {
                        CDW1 |= 0x10
                    }

                    CDW3 = CTRL /* \_SB_.PCI0.CTRL */
                    OSCC = CTRL /* \_SB_.PCI0.CTRL */
                    Return (Local0)
                }
                Else
                {
                    CDW1 |= 0x04
                    Return (Local0)
                }
            }

            Device (LPCB)
            {
                Name (_ADR, 0x001F0000)  // _ADR: Address
                Scope (\_SB)
                {
                    OperationRegion (ILBR, SystemMemory, IBAS, 0x8C)
                    Field (ILBR, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x08), 
                        PARC,   8, 
                        PBRC,   8, 
                        PCRC,   8, 
                        PDRC,   8, 
                        PERC,   8, 
                        PFRC,   8, 
                        PGRC,   8, 
                        PHRC,   8, 
                        Offset (0x14), 
                        ULKM,   8, 
                        Offset (0x88), 
                            ,   4, 
                        UI4E,   1
                    }

                    Device (LNKA)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, One)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PARC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSA) /* \_SB_.PRSA */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLA, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLA, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PARC & 0x0F))
                            Return (RTLA) /* \_SB_.LNKA._CRS.RTLA */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PARC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (PARC & 0x80)
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKB)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x02)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PBRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSB) /* \_SB_.PRSB */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLB, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLB, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PBRC & 0x0F))
                            Return (RTLB) /* \_SB_.LNKB._CRS.RTLB */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PBRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (PBRC & 0x80)
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKC)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x03)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PCRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSC) /* \_SB_.PRSC */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLC, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLC, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PCRC & 0x0F))
                            Return (RTLC) /* \_SB_.LNKC._CRS.RTLC */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PCRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (PCRC & 0x80)
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKD)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x04)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PDRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSD) /* \_SB_.PRSD */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLD, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLD, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PDRC & 0x0F))
                            Return (RTLD) /* \_SB_.LNKD._CRS.RTLD */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PDRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (PDRC & 0x80)
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKE)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x05)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PERC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSE) /* \_SB_.PRSE */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLE, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLE, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PERC & 0x0F))
                            Return (RTLE) /* \_SB_.LNKE._CRS.RTLE */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PERC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (PERC & 0x80)
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKF)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x06)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PFRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSF) /* \_SB_.PRSF */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLF, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLF, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PFRC & 0x0F))
                            Return (RTLF) /* \_SB_.LNKF._CRS.RTLF */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PFRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (PFRC & 0x80)
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKG)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x07)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PGRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSG) /* \_SB_.PRSG */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLG, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLG, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PGRC & 0x0F))
                            Return (RTLG) /* \_SB_.LNKG._CRS.RTLG */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PGRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (PGRC & 0x80)
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKH)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x08)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PHRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSH) /* \_SB_.PRSH */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLH, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLH, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PHRC & 0x0F))
                            Return (RTLH) /* \_SB_.LNKH._CRS.RTLH */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PHRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (PHRC & 0x80)
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }
                }

                OperationRegion (LPC0, PCI_Config, Zero, 0xC0)
                Field (LPC0, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x08), 
                    SRID,   8, 
                    Offset (0x80), 
                    C1EN,   1, 
                    Offset (0x84)
                }

                Scope (\_SB.PCI0.LPCB)
                {
                    Device (EC)
                    {
                        Name (_HID, EisaId ("PNP0C09") /* Embedded Controller Device */)  // _HID: Hardware ID
                        Name (_UID, One)  // _UID: Unique ID
                        Name (_GPE, 0x18)  // _GPE: General Purpose Events
                        Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                        {
                            Name (BFFR, ResourceTemplate ()
                            {
                                IO (Decode16,
                                    0x0062,             // Range Minimum
                                    0x0062,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0066,             // Range Minimum
                                    0x0066,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                            })
                            Return (BFFR) /* \_SB_.PCI0.LPCB.EC__._CRS.BFFR */
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        OperationRegion (ERAM, EmbeddedControl, Zero, 0xFF)
                        Field (ERAM, ByteAcc, NoLock, Preserve)
                        {
                            DSBY,   1, 
                            ENGA,   1, 
                            ENHY,   1, 
                            HFNE,   1, 
                            DSEM,   1, 
                            EN3R,   1, 
                            REBY,   1, 
                            ENTM,   1, 
                            ENBK,   1, 
                            ENFP,   1, 
                                ,   1, 
                            IDMI,   1, 
                            WPSW,   1, 
                            BYON,   1, 
                            ENBT,   1, 
                            NTKY,   1, 
                            DKON,   1, 
                            DSSK,   1, 
                            MTES,   1, 
                            USBO,   1, 
                            DSMC,   1, 
                            SNLC,   1, 
                            NLSF,   1, 
                            TNKB,   1, 
                            DSHP,   1, 
                            IGPK,   1, 
                            CHGR,   1, 
                                ,   1, 
                            CBAT,   1, 
                            ADO0,   1, 
                            ADO1,   1, 
                            Offset (0x04), 
                                ,   1, 
                            CLBA,   1, 
                            LWBA,   1, 
                            SUBE,   1, 
                            PUBE,   1, 
                            RSBE,   1, 
                            DCBE,   1, 
                            PFBE,   1, 
                            HSPA,   1, 
                            NHDD,   1, 
                            DEAD,   1, 
                            B440,   1, 
                            B315,   1, 
                            T315,   1, 
                            R315,   1, 
                            BYAM,   1, 
                            HSUN,   8, 
                            HSRP,   8, 
                                ,   1, 
                            DELY,   1, 
                            Offset (0x09), 
                            Offset (0x0A), 
                            Offset (0x0B), 
                            TPSE,   2, 
                            Offset (0x0C), 
                            HLCL,   4, 
                                ,   2, 
                            BLIK,   1, 
                            TONF,   1, 
                            UONE,   1, 
                                ,   1, 
                            UONM,   2, 
                            ECBK,   4, 
                            HFNS,   2, 
                            GSER,   1, 
                            PSCS,   1, 
                            PSDS,   1, 
                            GSUD,   1, 
                            GSID,   2, 
                            MBCG,   1, 
                            SBCG,   1, 
                            MBRF,   1, 
                            SBRF,   1, 
                            HDSU,   1, 
                            BYSU,   1, 
                                ,   1, 
                            TMOD,   1, 
                            HAM0,   8, 
                            HAM1,   8, 
                            HAM2,   8, 
                            HAM3,   8, 
                            PAAH,   8, 
                            PAAL,   8, 
                            HIAH,   8, 
                            HIAL,   8, 
                            MOID,   8, 
                            BOPL,   8, 
                            HAMA,   8, 
                            HAMB,   8, 
                            HAMC,   8, 
                            HAMD,   8, 
                            HAME,   8, 
                            HAMF,   8, 
                            HT00,   1, 
                            HT01,   1, 
                            HT02,   1, 
                            HT03,   1, 
                            HT10,   1, 
                            HT11,   1, 
                            HT12,   1, 
                            HT13,   1, 
                            Offset (0x23), 
                            EXCM,   8, 
                            Offset (0x25), 
                            Offset (0x26), 
                            USP0,   1, 
                            USP3,   1, 
                            USP4,   1, 
                            EHP0,   1, 
                            EHP1,   1, 
                            Offset (0x27), 
                            Offset (0x28), 
                            ID00,   1, 
                            ID01,   1, 
                            ID02,   1, 
                            ID03,   1, 
                                ,   2, 
                            SEBT,   1, 
                            CMDS,   1, 
                            Offset (0x2A), 
                            HATR,   8, 
                            HT0H,   8, 
                            HT0L,   8, 
                            HT1H,   8, 
                            HT1L,   8, 
                            HFSP,   8, 
                                ,   6, 
                            SMUT,   1, 
                            Offset (0x31), 
                            FANS,   2, 
                            HUWB,   1, 
                            ENS4,   1, 
                            DSEX,   1, 
                            AYID,   1, 
                            MMUT,   1, 
                            ODDP,   1, 
                            HWPM,   1, 
                            HWLB,   1, 
                            HWLO,   1, 
                            HWDK,   1, 
                            HWFN,   1, 
                            HWBT,   1, 
                            HWRI,   1, 
                            HWBU,   1, 
                            Offset (0x34), 
                                ,   7, 
                            HPLO,   1, 
                            Offset (0x36), 
                            Offset (0x37), 
                            Offset (0x38), 
                            HB0S,   7, 
                            MBTS,   1, 
                            Offset (0x3A), 
                            MUTE,   1, 
                            I2CS,   1, 
                            PWRF,   1, 
                            WANO,   1, 
                            DCBD,   1, 
                            DCWL,   1, 
                            DCWW,   1, 
                            Offset (0x3B), 
                            SPKM,   1, 
                            KBLH,   1, 
                                ,   1, 
                            BTDH,   1, 
                            USBN,   1, 
                                ,   2, 
                            S3FG,   1, 
                            Offset (0x3D), 
                            Offset (0x3E), 
                            Offset (0x41), 
                                ,   7, 
                            PFLG,   1, 
                            Offset (0x46), 
                            FNKY,   1, 
                                ,   1, 
                            HPLD,   1, 
                            PROF,   1, 
                            ACPW,   1, 
                                ,   2, 
                            CALR,   1, 
                            HPBU,   1, 
                            DKEV,   1, 
                            BYNO,   1, 
                            HDIB,   1, 
                                ,   2, 
                            RLKS,   1, 
                            Offset (0x48), 
                            HPHI,   1, 
                            GSTS,   1, 
                                ,   2, 
                            EXGC,   1, 
                            DOKI,   1, 
                            HDDT,   1, 
                            Offset (0x49), 
                                ,   1, 
                            NUMK,   1, 
                                ,   2, 
                            SEST,   4, 
                            Offset (0x4B), 
                            Offset (0x4C), 
                            ETHB,   8, 
                            ETLB,   8, 
                                ,   1, 
                            ACOV,   1, 
                            RMCS,   1, 
                                ,   1, 
                            T4E4,   1, 
                            T4E5,   1, 
                            Offset (0x4F), 
                            Offset (0x50), 
                            SMPR,   8, 
                            SMST,   8, 
                            SMAD,   8, 
                            SMCM,   8, 
                            SMD0,   100, 
                            Offset (0x74), 
                            BCNT,   8, 
                            SMAA,   8, 
                            BATD,   16, 
                            QTM0,   8, 
                            QTM1,   8, 
                            QTM2,   8, 
                            QTM3,   8, 
                            QTM4,   8, 
                            D0TL,   8, 
                            QTM6,   8, 
                            QTM7,   8, 
                            Offset (0x81), 
                            HIID,   8, 
                            Offset (0x83), 
                            HFNI,   8, 
                            Offset (0x86), 
                            Offset (0x87), 
                            Offset (0x88), 
                            SCRS,   1, 
                                ,   2, 
                            CPUT,   1, 
                                ,   3, 
                            DGTR,   1, 
                            YGHM,   8, 
                            Offset (0x8B), 
                            LOMD,   1, 
                            CBDE,   1, 
                            Offset (0x8C), 
                            NVPR,   1, 
                            TLLE,   1, 
                            Offset (0x8D), 
                            HDAA,   3, 
                            HDAB,   3, 
                            HDAC,   2, 
                            Offset (0x8F), 
                            Offset (0x90), 
                            ERMC,   8, 
                            Offset (0x92), 
                            AMSB,   8, 
                            ALSB,   8, 
                            DMSB,   8, 
                            DLSB,   8, 
                            Offset (0xA0), 
                            BAIF,   128, 
                            HDEN,   32, 
                            DBTS,   8, 
                            Offset (0xB8), 
                            ISTA,   1, 
                            IE1D,   1, 
                                ,   1, 
                            IE2D,   1, 
                            DCIF,   1, 
                            ISIR,   1, 
                            IWTI,   1, 
                            IWTT,   1, 
                            AWT0,   8, 
                            AWT1,   8, 
                            AWT2,   8, 
                            WTMS,   8, 
                            IBT1,   8, 
                            IBT2,   8, 
                            KAOC,   1, 
                                ,   3, 
                            TPSP,   1, 
                            Offset (0xC0), 
                            ALT1,   8, 
                            MCUR,   16, 
                            ART1,   8, 
                            Offset (0xC5), 
                            MBVG,   16, 
                            Offset (0xC8), 
                            ATMX,   8, 
                            AC65,   8, 
                            Offset (0xCB), 
                            BFUD,   1, 
                            Offset (0xCC), 
                            PWMH,   8, 
                            PWML,   8, 
                            SHSC,   8, 
                            HSID,   8, 
                            Offset (0xE0), 
                            ECRC,   16, 
                            ECAC,   16, 
                            ECVO,   16, 
                            Offset (0xE8), 
                            Offset (0xE9), 
                            Offset (0xEA), 
                            Offset (0xEB), 
                            Offset (0xEC), 
                            Offset (0xED), 
                                ,   1, 
                                ,   1, 
                                ,   1, 
                                ,   1, 
                                ,   1, 
                                ,   1, 
                                ,   1, 
                            Offset (0xEE), 
                            MBTH,   4, 
                            SBTH,   4, 
                            Offset (0xF0), 
                            Offset (0xF8), 
                                ,   4, 
                            Offset (0xF9), 
                            Offset (0xFA), 
                            Offset (0xFC)
                        }

                        Field (ERAM, ByteAcc, NoLock, Preserve)
                        {
                            Offset (0xA0), 
                            SBRC,   16, 
                            SBFC,   16, 
                            SBAE,   16, 
                            SBRS,   16, 
                            SBAC,   16, 
                            SBVO,   16, 
                            SBAF,   16, 
                            SBBS,   16
                        }

                        Field (ERAM, ByteAcc, NoLock, Preserve)
                        {
                            Offset (0xA0), 
                                ,   15, 
                            SBCM,   1, 
                            SBMD,   16, 
                            SBCC,   16
                        }

                        Field (ERAM, ByteAcc, NoLock, Preserve)
                        {
                            Offset (0xA0), 
                            SBDC,   16, 
                            SBDV,   16, 
                            SBOM,   16, 
                            SBSI,   16, 
                            SBDT,   16, 
                            SBSN,   16
                        }

                        Field (ERAM, ByteAcc, NoLock, Preserve)
                        {
                            Offset (0xA0), 
                            SBCH,   32
                        }

                        Field (ERAM, ByteAcc, NoLock, Preserve)
                        {
                            Offset (0xA0), 
                            SBMN,   128
                        }

                        Field (ERAM, ByteAcc, NoLock, Preserve)
                        {
                            Offset (0xA0), 
                            SBDN,   128
                        }

                        Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                        {
                            If ((Arg0 == 0x03) && (Arg1 == One))
                            {
                                ECON = One
                                SS4F = Zero
                                VBRG ()
                                VBRS (BRNS)
                                LIDX = Zero
                                ACSS = ACPW /* \_SB_.PCI0.LPCB.EC__.ACPW */
                                PWRS = ACPW /* \_SB_.PCI0.LPCB.EC__.ACPW */
                                WGSV (Zero)
                                ^HKEY.WGIN ()
                                Notify (BAT1, Zero) // Bus Check
                                If (OSYS <= 0x07D9)
                                {
                                    If (TSMT == One)
                                    {
                                        TPSP = Zero
                                    }
                                }

                                AUDS (Zero, Zero)
                                Local0 = (YGHM & 0x7F)
                                If ((Local0 >= 0x03) && (Local0 <= 0x05))
                                {
                                    LKLS = One
                                    AUDS (0x04, Zero)
                                }

                                If ((Local0 >= Zero) && (Local0 <= 0x02))
                                {
                                    LKLS = Zero
                                    AUDS (0x04, One)
                                }
                            }
                        }

                        Method (FNST, 0, NotSerialized)
                        {
                            If (ECON)
                            {
                                UCMS (0x11)
                            }

                            ^HKEY.MHKQ (0x6060)
                        }

                        Method (CHKS, 0, NotSerialized)
                        {
                            Local0 = 0x03E8
                            While (SMPR)
                            {
                                Sleep (One)
                                Local0--
                                If (!Local0)
                                {
                                    Return (0x8080)
                                }
                            }

                            Local1 = (SMST & 0x80)
                            If (Local1 == 0x80)
                            {
                                Return (Zero)
                            }

                            Return (0x8081)
                        }

                        Method (BFWL, 0, NotSerialized)
                        {
                            FW00 = SMD0 /* \_SB_.PCI0.LPCB.EC__.SMD0 */
                            SMI (0x14, 0x02, Zero, Zero, Zero)
                        }

                        Name (BRTB, Package (0x07)
                        {
                            Package (0x10)
                            {
                                0x04, 
                                0x07, 
                                0x09, 
                                0x0C, 
                                0x10, 
                                0x15, 
                                0x1C, 
                                0x25, 
                                0x32, 
                                0x40, 
                                0x50, 
                                0x64, 
                                0x82, 
                                0xA5, 
                                0xCD, 
                                0xFF
                            }, 

                            Package (0x10)
                            {
                                0x04, 
                                0x07, 
                                0x09, 
                                0x0C, 
                                0x10, 
                                0x15, 
                                0x1C, 
                                0x25, 
                                0x32, 
                                0x40, 
                                0x50, 
                                0x64, 
                                0x82, 
                                0xA5, 
                                0xCD, 
                                0xFF
                            }, 

                            Package (0x05)
                            {
                                0xDC, 
                                0xDC, 
                                Zero, 
                                Zero, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0xDC, 
                                0xDC, 
                                0x06, 
                                0x06
                            }, 

                            Package (0x04)
                            {
                                0xDC, 
                                0xDC, 
                                0x09, 
                                0x09
                            }, 

                            Package (0x04)
                            {
                                0xDC, 
                                0xDC, 
                                0x09, 
                                0x09
                            }, 

                            Package (0x04)
                            {
                                0xDC, 
                                0xDC, 
                                0x0D, 
                                0x0D
                            }
                        })
                        Method (BLCL, 0, NotSerialized)
                        {
                            Local0 = BRNS /* \BRNS */
                            If (^^^GFX0.DRDY)
                            {
                                If (Zero == Local0)
                                {
                                    Local1 = DerefOf (DerefOf (BRTB [0x02]) [0x03])
                                    Local2 = DerefOf (DerefOf (BRTB [0x02]) [Zero])
                                }
                                Else
                                {
                                    Local1 = DerefOf (DerefOf (BRTB [0x02]) [0x04])
                                    Local2 = DerefOf (DerefOf (BRTB [0x02]) [One])
                                }

                                Local2 = (Local1 | (Local2 << 0x09))
                                ^^^GFX0.AINT (0x03, Local2)
                                Local1 = Zero
                                Local2 = DerefOf (DerefOf (BRTB [Local1]) [Local0])
                                ^^^GFX0.AINT (One, Local2)
                            }
                        }

                        Method (BCMP, 0, NotSerialized)
                        {
                            Local3 = Zero
                            If (PNIT == 0x14)
                            {
                                Local3 = 0x03
                            }
                            ElseIf (PNIT == 0x1E)
                            {
                                Local3 = 0x04
                            }
                            ElseIf (PNIT == 0x23)
                            {
                                Local3 = 0x05
                            }
                            ElseIf (PNIT == 0x25)
                            {
                                Local3 = 0x06
                            }

                            If (^^^GFX0.DRDY)
                            {
                                If (Local3 != Zero)
                                {
                                    Local1 = DerefOf (DerefOf (BRTB [Local3]) [0x03])
                                    Local2 = DerefOf (DerefOf (BRTB [Local3]) [One])
                                    Local2 = (Local1 | (Local2 << 0x09))
                                    ^^^GFX0.AINT (0x03, Local2)
                                }
                            }
                        }

                        Method (_Q12, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0x12
                            ^HKEY.MHKQ (0x1003)
                        }

                        Method (_Q79, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0x79
                            If (^HKEY.DHKC)
                            {
                                ^HKEY.MHKQ (0x1004)
                            }
                            Else
                            {
                                Notify (SLPB, 0x80) // Status Change
                            }
                        }

                        Method (_Q16, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0x16
                            If (^HKEY.MHKK (0x40))
                            {
                                ^HKEY.MHKQ (0x1007)
                            }
                            Else
                            {
                                ^^^GFX0.GHDS (Zero)
                            }
                        }

                        Method (_Q64, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0x64
                            If (^HKEY.MHKK (0x00010000))
                            {
                                ^HKEY.MHKQ (0x1011)
                            }

                            Notify (^^^GFX0.DD1F, 0x87) // Device-Specific
                            Sleep (0x50)
                            UCMS (0x16)
                        }

                        Method (_Q65, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0x65
                            If (^HKEY.MHKK (0x8000))
                            {
                                ^HKEY.MHKQ (0x1010)
                            }

                            Notify (^^^GFX0.DD1F, 0x86) // Device-Specific
                            Sleep (0x50)
                            UCMS (0x16)
                        }

                        Method (_Q1C, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0x1C
                            If (^HKEY.MHKK (0x00200000))
                            {
                                ^HKEY.MHKQ (0x1016)
                            }

                            UCMS (Zero)
                        }

                        Method (_Q1D, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0x1D
                            If (^HKEY.MHKK (0x00100000))
                            {
                                ^HKEY.MHKQ (0x1015)
                            }

                            UCMS (One)
                        }

                        Method (_Q1E, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0x1E
                            ADO0 = One
                            ADO1 = One
                        }

                        Method (_Q22, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0x22
                            If (MBTS)
                            {
                                Notify (BAT1, 0x80) // Status Change
                                Notify (BAT1, Zero) // Bus Check
                            }
                        }

                        Method (_Q24, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0x24
                            Notify (BAT1, 0x80) // Status Change
                        }

                        Method (_Q26, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0x26
                            Sleep (0x01F4)
                            Notify (ACAD, 0x80) // Status Change
                            Notify (BAT1, 0x80) // Status Change
                            Notify (\_TZ.TZ01, 0x80) // Thermal Status Change
                            ^HKEY.MHKQ (0x6040)
                            PNOT ()
                        }

                        Method (_Q27, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0x27
                            Sleep (0x01F4)
                            Notify (ACAD, 0x80) // Status Change
                            ^HKEY.MHKQ (0x6040)
                            PNOT ()
                        }

                        Method (_Q2A, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0x2A
                            ^HKEY.MHKQ (0x5002)
                            Notify (LID, 0x80) // Status Change
                        }

                        Method (_Q2B, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0x2B
                            ^HKEY.MHKQ (0x5001)
                            Notify (LID, 0x80) // Status Change
                        }

                        Name (RONC, Zero)
                        Method (_Q34, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0x34
                            If (((Local1 = (HB0S & 0x0F)) == Zero) && !ACPW)
                            {
                                If (SS4F == Zero)
                                {
                                    SS4F = One
                                    ^HKEY.MHKQ (0x2313)
                                }
                            }
                        }

                        Method (_Q3F, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0x3F
                            Sleep (0x01F4)
                            ^HKEY.MHKQ (0x6000)
                        }

                        Method (_Q41, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0x41
                            Sleep (0x01F4)
                            ^HKEY.MHKQ (0x7000)
                            If (!GSTS)
                            {
                                PWON (0x0222, Zero)
                            }
                            Else
                            {
                                If (WLNP)
                                {
                                    PWON (0x0200, DCWL)
                                }

                                If (BTMD)
                                {
                                    PWON (0x20, DCBD)
                                }

                                If (WANP)
                                {
                                    PWON (0x02, DCWW)
                                }
                            }
                        }

                        Method (_Q43, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0x43
                            UCMS (0x18)
                        }

                        Method (_Q46, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0x46
                            If (TSMT == One)
                            {
                                ^HKEY.MHKQ (0x60C0)
                                Local0 = (YGHM & 0x7F)
                                If ((Local0 >= 0x03) && (Local0 <= 0x05))
                                {
                                    If (LKLS == Zero)
                                    {
                                        AUDS (0x04, Zero)
                                    }

                                    LKLS = One
                                }

                                If ((Local0 >= Zero) && (Local0 <= 0x02))
                                {
                                    If (LKLS == One)
                                    {
                                        AUDS (0x04, One)
                                    }

                                    LKLS = Zero
                                }
                            }
                        }

                        Method (_Q4A, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0x4A
                            BFAD = One
                            Sleep (0xC8)
                            Notify (BAT1, Zero) // Bus Check
                            PNOT ()
                        }

                        Method (_Q4B, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0x4B
                            Notify (BAT1, 0x80) // Status Change
                            PNOT ()
                        }

                        Method (_Q4E, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0x4E
                            ^HKEY.MHKQ (0x6011)
                        }

                        Method (_Q4F, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0x4F
                            ^HKEY.MHKQ (0x6012)
                        }

                        Method (_Q50, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0x50
                            BASC = One
                            Notify (BAT1, 0x81) // Information Change
                            PNOT ()
                        }

                        Method (_Q60, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0x60
                            If (^HKEY.MHKK (0x2000))
                            {
                                ^HKEY.MHKQ (0x100E)
                            }
                        }

                        Method (_Q63, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0x63
                            If (^HKEY.MHKK (0x00020000))
                            {
                                ^HKEY.MHKQ (0x1012)
                            }

                            UCMS (0x0B)
                        }

                        Method (_Q17, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0x17
                            If (^HKEY.MHKK (0x10))
                            {
                                ^HKEY.MHKQ (0x1005)
                            }

                            If (WWNA)
                            {
                                PWON (0x02, DCWW)
                                WWNA = Zero
                            }
                            ElseIf (WANA)
                            {
                                PWON (0x0200, DCWL)
                                WANA = Zero
                            }
                            ElseIf (BTHA)
                            {
                                PWON (0x20, DCBD)
                                BTHA = Zero
                            }
                        }

                        Method (_Q18, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0x18
                            If (^HKEY.MHKK (0x10000000))
                            {
                                ^HKEY.MHKQ (0x101D)
                            }
                        }

                        Method (_Q19, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0x19
                            If (^HKEY.MHKK (0x20000000))
                            {
                                ^HKEY.MHKQ (0x101E)
                            }
                        }

                        Method (_Q1A, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0x1A
                            If (^HKEY.MHKK (0x40000000))
                            {
                                ^HKEY.MHKQ (0x101F)
                            }
                        }

                        Method (_Q1B, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0x1B
                            If (^HKEY.MHKK (0x80000000))
                            {
                                ^HKEY.MHKQ (0x1020)
                            }
                        }

                        Method (_Q66, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0x66
                            If (^HKEY.MHKK (0x0200))
                            {
                                ^HKEY.MHKQ (0x100A)
                            }

                            UCMS (0x02)
                        }

                        Method (_Q67, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0x67
                            If (^HKEY.MHKK (0x00040000))
                            {
                                ^HKEY.MHKQ (0x1013)
                            }
                        }

                        Method (_Q13, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0x13
                            If (^HKEY.MHKK (0x04000000))
                            {
                                ^HKEY.MHKQ (0x101B)
                            }
                        }

                        Method (_Q72, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0x72
                            If (HFNE)
                            {
                                FNSC (0x04, 0x00010001)
                            }
                            Else
                            {
                                FNSC (0x04, 0x00010010)
                            }

                            FNST ()
                        }

                        Method (_Q73, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0x73
                            If (HFNE)
                            {
                                FNSC (0x04, 0x00011000)
                            }
                            Else
                            {
                                FNSC (0x04, 0x00010000)
                            }

                            FNST ()
                        }

                        Method (_Q70, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0x70
                            FNSC (0x04, 0x00010100)
                            FNST ()
                        }

                        Method (_Q95, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0x95
                            Notify (\_TZ.TZ01, 0x80) // Thermal Status Change
                        }

                        Method (_QEA, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0xEA
                            If (T4E4 == Zero)
                            {
                                T4E4 = One
                                T4E5 = Zero
                                Sleep (0x1E)
                            }
                            Else
                            {
                                T4E5 = One
                                Sleep (0x1E)
                            }
                        }

                        Method (_QEC, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0xEC
                            T4E4 = One
                            T4E5 = Zero
                            Sleep (0x1E)
                        }

                        Method (_QEB, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0xEB
                            ACOV = One
                            RMCS = One
                            Sleep (0x1E)
                        }

                        Method (_QED, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0xED
                            ACOV = Zero
                            RMCS = Zero
                            T4E4 = Zero
                            T4E5 = Zero
                            Sleep (0x1E)
                        }

                        Method (_QF0, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0xF0
                            ITDP ()
                            \_PR.CPU0._PPC = PPCP /* \PPCP */
                            PNOT ()
                            Notify (\_PR.CPU0, 0x80) // Performance Capability Change
                            Notify (\_PR.CPU1, 0x80) // Performance Capability Change
                        }

                        Method (_QF1, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0xF1
                            TBCT (Zero)
                            CPUT = Zero
                        }

                        Method (_QF2, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            P80H = 0xF2
                            TBCT (One)
                            CPUT = One
                        }

                        Device (HKEY)
                        {
                            Name (_HID, EisaId ("LEN0068"))  // _HID: Hardware ID
                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                Return (0x0F)
                            }

                            Method (MHKV, 0, NotSerialized)
                            {
                                Return (0x0100)
                            }

                            Name (DHKC, Zero)
                            Name (DHKB, One)
                            Mutex (XDHK, 0x07)
                            Name (DHKH, Zero)
                            Name (DHKW, Zero)
                            Name (DHKS, Zero)
                            Name (DHKD, Zero)
                            Name (DHKN, 0x0808)
                            Name (DHKT, Zero)
                            Name (DHWW, Zero)
                            Method (MHKA, 0, NotSerialized)
                            {
                                Return (0xF40988F8)
                            }

                            Method (MHKN, 0, NotSerialized)
                            {
                                Return (DHKN) /* \_SB_.PCI0.LPCB.EC__.HKEY.DHKN */
                            }

                            Method (MHKK, 1, NotSerialized)
                            {
                                If (DHKC)
                                {
                                    Return ((DHKN & Arg0))
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }

                            Method (MHKM, 2, NotSerialized)
                            {
                                Acquire (XDHK, 0xFFFF)
                                If (Arg0 > 0x20)
                                {
                                    Noop
                                }
                                Else
                                {
                                    Local0 = (One << Arg0--)
                                    If (Local0 & 0xF40988F8)
                                    {
                                        If (Arg1)
                                        {
                                            DHKN |= Local0 /* \_SB_.PCI0.LPCB.EC__.HKEY.DHKN */
                                        }
                                        Else
                                        {
                                            DHKN &= (Local0 ^ 0xFFFFFFFF)
                                        }
                                    }
                                    Else
                                    {
                                        Noop
                                    }
                                }

                                Release (XDHK)
                            }

                            Method (MHKS, 0, NotSerialized)
                            {
                                Notify (SLPB, 0x80) // Status Change
                            }

                            Method (MHKC, 1, NotSerialized)
                            {
                                DHKC = Arg0
                            }

                            Method (MHKP, 0, NotSerialized)
                            {
                                Acquire (XDHK, 0xFFFF)
                                If (DHWW)
                                {
                                    Local1 = DHWW /* \_SB_.PCI0.LPCB.EC__.HKEY.DHWW */
                                    DHWW = Zero
                                }
                                ElseIf (DHKW)
                                {
                                    Local1 = DHKW /* \_SB_.PCI0.LPCB.EC__.HKEY.DHKW */
                                    DHKW = Zero
                                }
                                ElseIf (DHKD)
                                {
                                    Local1 = DHKD /* \_SB_.PCI0.LPCB.EC__.HKEY.DHKD */
                                    DHKD = Zero
                                }
                                ElseIf (DHKS)
                                {
                                    Local1 = DHKS /* \_SB_.PCI0.LPCB.EC__.HKEY.DHKS */
                                    DHKS = Zero
                                }
                                ElseIf (DHKT)
                                {
                                    Local1 = DHKT /* \_SB_.PCI0.LPCB.EC__.HKEY.DHKT */
                                    DHKT = Zero
                                }
                                Else
                                {
                                    Local1 = DHKH /* \_SB_.PCI0.LPCB.EC__.HKEY.DHKH */
                                    DHKH = Zero
                                }

                                Release (XDHK)
                                Return (Local1)
                            }

                            Method (KLCG, 1, NotSerialized)
                            {
                                Local0 = Zero
                                Return (Local0)
                            }

                            Method (KLCS, 1, NotSerialized)
                            {
                                Return (Zero)
                            }

                            Method (MHKE, 1, NotSerialized)
                            {
                                DHKB = Arg0
                                Acquire (XDHK, 0xFFFF)
                                DHKH = Zero
                                DHKW = Zero
                                DHKS = Zero
                                DHKD = Zero
                                DHKT = Zero
                                DHWW = Zero
                                Release (XDHK)
                            }

                            Method (MHKQ, 1, NotSerialized)
                            {
                                If (DHKB)
                                {
                                    If (DHKC)
                                    {
                                        Acquire (XDHK, 0xFFFF)
                                        If (Arg0 < 0x1000) {}
                                        ElseIf (Arg0 < 0x2000)
                                        {
                                            DHKH = Arg0
                                        }
                                        ElseIf (Arg0 < 0x3000)
                                        {
                                            DHKW = Arg0
                                        }
                                        ElseIf (Arg0 < 0x4000)
                                        {
                                            DHKS = Arg0
                                        }
                                        ElseIf (Arg0 < 0x5000)
                                        {
                                            DHKD = Arg0
                                        }
                                        ElseIf (Arg0 < 0x6000)
                                        {
                                            DHKH = Arg0
                                        }
                                        ElseIf (Arg0 < 0x7000)
                                        {
                                            DHKT = Arg0
                                        }
                                        ElseIf (Arg0 < 0x8000)
                                        {
                                            DHWW = Arg0
                                        }
                                        Else
                                        {
                                        }

                                        Release (XDHK)
                                        Notify (HKEY, 0x80) // Status Change
                                    }
                                    ElseIf (Arg0 == 0x1004)
                                    {
                                        Notify (SLPB, 0x80) // Status Change
                                    }
                                }
                            }

                            Method (MHKD, 0, NotSerialized)
                            {
                            }

                            Method (MHQC, 1, NotSerialized)
                            {
                                Return (Zero)
                            }

                            Method (MHGC, 0, NotSerialized)
                            {
                                Return (Zero)
                            }

                            Method (MHSC, 1, NotSerialized)
                            {
                            }

                            Method (INSG, 1, NotSerialized)
                            {
                                Local0 = IOEN /* \IOEN */
                                Local0 |= (IOST << 0x07)
                                Local0 |= (IOCP << 0x08)
                                Local0 |= 0x10000100
                                Return (Local0)
                            }

                            Method (INSS, 1, NotSerialized)
                            {
                                IOCP = One
                                If (Arg0 & 0x10000000)
                                {
                                    If (IOCP)
                                    {
                                        Local0 = ((Arg0 & 0x80) >> 0x07)
                                        If (!EZRC (Local0))
                                        {
                                            IOST = Local0
                                        }
                                    }

                                    Return (Zero)
                                }

                                If (IOCP && (Arg0 & One))
                                {
                                    IOEN = One
                                }
                                Else
                                {
                                    IOEN = Zero
                                    If (IOST)
                                    {
                                        If (!ISOC (Zero))
                                        {
                                            IOST = Zero
                                        }
                                    }
                                }

                                Return (Zero)
                            }

                            Method (ISSG, 1, NotSerialized)
                            {
                                Local0 = ISSP /* \ISSP */
                                Local0 |= 0x80
                                Local0 |= (ISCG & 0x20)
                                Return (Local0)
                            }

                            Method (ISSS, 1, NotSerialized)
                            {
                                ISCG = Arg0
                                Return (Zero)
                            }

                            Method (FFSG, 1, NotSerialized)
                            {
                                Return (IFRS (Zero, Zero))
                            }

                            Method (FFSS, 1, NotSerialized)
                            {
                                IFRS (One, Arg0)
                                Return (Zero)
                            }

                            Method (MHKG, 0, NotSerialized)
                            {
                                Return (Zero)
                            }

                            Method (MHST, 0, NotSerialized)
                            {
                            }

                            Method (MHTT, 0, NotSerialized)
                            {
                            }

                            Method (MHBT, 0, NotSerialized)
                            {
                            }

                            Method (MHFT, 1, NotSerialized)
                            {
                            }

                            Method (MHCT, 1, NotSerialized)
                            {
                            }

                            Method (MMTG, 0, NotSerialized)
                            {
                                Local0 = Zero
                                Local0 |= One
                                If (!MCMU)
                                {
                                    Local0 |= 0x00010000
                                }

                                Return (Local0)
                            }

                            Method (MMTS, 1, NotSerialized)
                            {
                                If (Arg0 == 0x02)
                                {
                                    AUDS (0x03, One)
                                }
                                Else
                                {
                                    AUDS (0x03, Zero)
                                }
                            }

                            Name (INDV, Zero)
                            Method (MHQI, 0, NotSerialized)
                            {
                                If (IPMS & One)
                                {
                                    INDV |= One
                                }

                                If (IPMS & 0x02)
                                {
                                    INDV |= 0x02
                                }

                                If (IPMS & 0x04)
                                {
                                    INDV |= 0x0100
                                }

                                If (IPMS & 0x08)
                                {
                                    INDV |= 0x0200
                                }

                                If (IPMS & 0x10)
                                {
                                    INDV |= 0x04
                                }

                                INDV |= 0x0303
                                Return (INDV) /* \_SB_.PCI0.LPCB.EC__.HKEY.INDV */
                            }

                            Method (MHGI, 1, NotSerialized)
                            {
                            }

                            Method (MHSI, 2, NotSerialized)
                            {
                            }

                            Method (IRDY, 0, NotSerialized)
                            {
                                Local0 = 0x01F4
                                Local1 = 0x3C
                                Local2 = Zero
                                While (Local1)
                                {
                                    Sleep (Local0)
                                    Local3 = BCHK ()
                                    If (!Local3)
                                    {
                                        Break
                                    }

                                    If (Local3 == 0x02)
                                    {
                                        Local2 = One
                                        Break
                                    }

                                    Local1--
                                }

                                Return (Local2)
                            }

                            Mutex (BFWM, 0x07)
                            Method (MHCF, 1, NotSerialized)
                            {
                                Local0 = BFWC (Arg0)
                                Return (Local0)
                            }

                            Method (MHPF, 1, NotSerialized)
                            {
                                Name (RETB, Buffer (0x25) {})
                                Acquire (BFWM, 0xFFFF)
                                If (SizeOf (Arg0) <= 0x25)
                                {
                                    BFWB = Arg0
                                    If (BFWP ())
                                    {
                                        CHKS ()
                                        BFWL ()
                                    }

                                    RETB = BFWB /* \BFWB */
                                }

                                Release (BFWM)
                                Return (RETB) /* \_SB_.PCI0.LPCB.EC__.HKEY.MHPF.RETB */
                            }

                            Method (BAIO, 1, NotSerialized)
                            {
                                HIID = Arg0
                                WAEC ()
                                Return (BAIF) /* \_SB_.PCI0.LPCB.EC__.BAIF */
                            }

                            Method (MHIF, 1, NotSerialized)
                            {
                                Name (RETB, Buffer (0x0A)
                                {
                                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                    /* 0008 */  0x00, 0x00                                       /* .. */
                                })
                                If (Arg0 == Zero)
                                {
                                    Acquire (BFWM, 0xFFFF)
                                    If (Arg0)
                                    {
                                        MH01 = BAIO (0x11)
                                    }
                                    Else
                                    {
                                        MH01 = BAIO (One)
                                    }

                                    If (Arg0)
                                    {
                                        MH08 = BAIO (0x18)
                                    }
                                    Else
                                    {
                                        MH08 = BAIO (0x08)
                                    }

                                    BFWG (Arg0)
                                    RETB = BFWB /* \BFWB */
                                    Release (BFWM)
                                }

                                Return (RETB) /* \_SB_.PCI0.LPCB.EC__.HKEY.MHIF.RETB */
                            }

                            Method (MHDM, 1, NotSerialized)
                            {
                                BDMC (Arg0)
                            }

                            Method (CKC4, 1, NotSerialized)
                            {
                                Local0 = Zero
                                If (!C4AC)
                                {
                                    Local0 |= One
                                }

                                If (!(CFGD & 0x2800))
                                {
                                    Local0 |= 0x02
                                }

                                If (CWAC && CWAS)
                                {
                                    Local0 |= 0x04
                                }

                                If (CWUE && CWUS)
                                {
                                    Local0 |= 0x08
                                }

                                Local0 &= ~Arg0
                                Return (Local0)
                            }

                            Method (MHQE, 0, NotSerialized)
                            {
                                Return (One)
                            }

                            Method (MHGE, 0, NotSerialized)
                            {
                                If (One && C4AC)
                                {
                                    Return (0x04)
                                }

                                C4AC = Zero
                                PNTF (0x81)
                                Return (0x03)
                            }

                            Method (MHSE, 1, NotSerialized)
                            {
                                Local0 = C4AC /* \C4AC */
                                If (Arg0 == 0x03)
                                {
                                    C4AC = Zero
                                    PNTF (0x81)
                                }
                                ElseIf (Arg0 == 0x04)
                                {
                                    C4AC = One
                                    PNTF (0x81)
                                }
                            }

                            Method (PWMC, 0, NotSerialized)
                            {
                                Return (One)
                            }

                            Method (PWMG, 0, NotSerialized)
                            {
                                Local0 = PWMH /* \_SB_.PCI0.LPCB.EC__.PWMH */
                                Local0 <<= 0x08
                                Local0 |= PWML /* \_SB_.PCI0.LPCB.EC__.PWML */
                                Return (Local0)
                            }

                            Method (UAWO, 1, NotSerialized)
                            {
                                Return (Zero)
                            }

                            Method (MHAT, 1, NotSerialized)
                            {
                                Return (Zero)
                            }

                            Method (MHGT, 1, NotSerialized)
                            {
                                Return (Zero)
                            }

                            Method (PSSG, 1, NotSerialized)
                            {
                                Return (PSIF (Zero, Zero))
                            }

                            Method (PSSS, 1, NotSerialized)
                            {
                                Return (PSIF (One, Arg0))
                            }

                            Method (PSBS, 1, NotSerialized)
                            {
                                Return (PSIF (0x02, Arg0))
                            }

                            Method (BICG, 1, NotSerialized)
                            {
                                Return (PSIF (0x03, Arg0))
                            }

                            Method (BICS, 1, NotSerialized)
                            {
                                Return (PSIF (0x04, Arg0))
                            }

                            Method (BCTG, 1, NotSerialized)
                            {
                                Return (PSIF (0x05, Arg0))
                            }

                            Method (BCCS, 1, NotSerialized)
                            {
                                Return (PSIF (0x06, Arg0))
                            }

                            Method (BCSG, 1, NotSerialized)
                            {
                                Return (PSIF (0x07, Arg0))
                            }

                            Method (BCSS, 1, NotSerialized)
                            {
                                Return (PSIF (0x08, Arg0))
                            }

                            Method (BDSG, 1, NotSerialized)
                            {
                                Return (PSIF (0x09, Arg0))
                            }

                            Method (BDSS, 1, NotSerialized)
                            {
                                Return (PSIF (0x0A, Arg0))
                            }

                            Method (GMKS, 0, NotSerialized)
                            {
                                Local0 = FNSC (0x02, Zero)
                                If ((HFNS == One) || (HFNS == 0x02))
                                {
                                    Local0 |= One
                                }

                                Return (Local0)
                            }

                            Method (SMKS, 1, NotSerialized)
                            {
                                Return (FNSC (0x03, (Arg0 & 0x00010001)))
                            }

                            Method (GHSL, 1, NotSerialized)
                            {
                                Return (FNSC (Zero, Zero))
                            }

                            Method (SHSL, 1, NotSerialized)
                            {
                                Return (FNSC (One, (Arg0 & 0x00010001)))
                            }

                            Method (GSMS, 1, NotSerialized)
                            {
                                Return (AUDS (Zero, Zero))
                            }

                            Method (SSMS, 1, NotSerialized)
                            {
                                Return (AUDS (One, (Arg0 & One)))
                            }

                            Method (SHDA, 1, NotSerialized)
                            {
                                Return (AUDS (0x02, Zero))
                            }

                            Method (SBSG, 1, NotSerialized)
                            {
                                Return (SYBC (Zero, Zero))
                            }

                            Method (SBSS, 1, NotSerialized)
                            {
                                Return (SYBC (One, Arg0))
                            }

                            Mutex (GSBM, 0x07)
                            Name (BATI, Buffer (0x0100) {})
                            Method (SBIG, 1, NotSerialized)
                            {
                                If (Arg0 == Zero)
                                {
                                    CreateField (BATI, Zero, 0x80, BA00)
                                    CreateField (BATI, 0x80, 0x80, BA01)
                                    CreateField (BATI, 0x0100, 0x80, BA02)
                                    CreateField (BATI, 0x0180, 0x80, BA03)
                                    CreateField (BATI, 0x0200, 0x80, BA04)
                                    CreateField (BATI, 0x0280, 0x80, BA05)
                                    CreateField (BATI, 0x0300, 0x80, BA06)
                                    CreateField (BATI, 0x0380, 0x80, BA07)
                                    CreateField (BATI, 0x0400, 0x80, BA08)
                                    CreateField (BATI, 0x0480, 0x80, BA09)
                                    CreateField (BATI, 0x0500, 0x80, BA0A)
                                    CreateField (BATI, 0x0580, 0x80, BA0B)
                                    CreateField (BATI, 0x0600, 0x80, BA0C)
                                    CreateField (BATI, 0x0680, 0x80, BA0D)
                                    CreateField (BATI, 0x0700, 0x80, BA0E)
                                    CreateField (BATI, 0x0780, 0x80, BA0F)
                                    If (BFAD)
                                    {
                                        Sleep (0x03E8)
                                    }

                                    CBIF (Arg0, Zero)
                                    BA00 = IF00 /* \IF00 */
                                    CBIF (Arg0, 0x03)
                                    BA03 = IF03 /* \IF03 */
                                    CBIF (Arg0, 0x04)
                                    BA04 = IF04 /* \IF04 */
                                    CBIF (Arg0, 0x05)
                                    BA05 = IF05 /* \IF05 */
                                    CBIF (Arg0, 0x06)
                                    BA06 = IF06 /* \IF06 */
                                    CBIF (Arg0, 0x07)
                                    BA07 = IF07 /* \IF07 */
                                    CBIF (Arg0, 0x08)
                                    BA08 = IF08 /* \IF08 */
                                    CBIF (Arg0, 0x09)
                                    BA09 = IF09 /* \IF09 */
                                    If (BFAD)
                                    {
                                        BFAD = Zero
                                        Sleep (0x07D0)
                                    }

                                    CBIF (Arg0, One)
                                    BA01 = IF01 /* \IF01 */
                                    CBIF (Arg0, 0x02)
                                    BA02 = IF02 /* \IF02 */
                                    CBIF (Arg0, 0x0A)
                                    BA0A = IF0A /* \IF0A */
                                    CBIF (Arg0, 0x0B)
                                    BA0B = IF0B /* \IF0B */
                                    CBIF (Arg0, 0x0C)
                                    BA0C = IF0C /* \IF0C */
                                    BA0D = IF0D /* \IF0D */
                                    BA0E = IF0E /* \IF0E */
                                    BA0F = IF0F /* \IF0F */
                                }

                                Return (BATI) /* \_SB_.PCI0.LPCB.EC__.HKEY.BATI */
                            }

                            Method (PBLG, 1, NotSerialized)
                            {
                                Local0 = BRNS /* \BRNS */
                                Local1 = (Local0 | 0x0F00)
                                Return (Local1)
                            }

                            Method (PBLS, 1, NotSerialized)
                            {
                                If ((Arg0 >= Zero) && (Arg0 <= 0x0F))
                                {
                                    BRNS = Arg0
                                    VBRS (Arg0)
                                    Return (Zero)
                                }

                                Return (0x80000000)
                            }

                            Method (PMSG, 1, NotSerialized)
                            {
                                Return (PRSM (Zero, Zero))
                            }

                            Method (PMSS, 1, NotSerialized)
                            {
                                PRSM (One, Arg0)
                                Return (Zero)
                            }

                            Method (GMMS, 1, NotSerialized)
                            {
                                Local0 = (YGHM & 0x7F)
                                Local1 = (Local0 | 0x00040000)
                                Return (Local1)
                            }

                            Name (WGFL, Zero)
                            Method (WLSW, 0, NotSerialized)
                            {
                                Return (GSTS) /* \_SB_.PCI0.LPCB.EC__.GSTS */
                            }

                            Method (GWLS, 0, NotSerialized)
                            {
                                If (WGSV (0x09) & One)
                                {
                                    GSTS = One
                                    WGSV (0x07)
                                }
                                Else
                                {
                                    GSTS = Zero
                                    WGSV (0x08)
                                }

                                Return (GSTS) /* \_SB_.PCI0.LPCB.EC__.GSTS */
                            }

                            Method (SWLS, 1, NotSerialized)
                            {
                                If (Arg0 & One)
                                {
                                    GSTS = One
                                    WGSV (0x07)
                                    WLPC (One)
                                    WPWC (One)
                                    BPWC (One)
                                }
                                Else
                                {
                                    GSTS = Zero
                                    WGSV (0x08)
                                    WLPC (Zero)
                                    WPWC (Zero)
                                    BPWC (Zero)
                                }
                            }

                            Method (GWLN, 0, NotSerialized)
                            {
                                Local0 = Zero
                                If (WLNP)
                                {
                                    Local0 = One
                                    WGFL |= 0x0100
                                }
                                Else
                                {
                                    WGFL &= 0xFFFFFEFF
                                }

                                If (WLPS () && !WOFF)
                                {
                                    Local0 |= 0x02
                                }
                                Else
                                {
                                    Local0 &= 0xFFFFFFFD
                                }

                                Return (Local0)
                            }

                            Method (SWLN, 1, NotSerialized)
                            {
                                If ((Arg0 & 0x02) && ((WGFL & 0x0100) && One))
                                {
                                    WGFL |= 0x0400
                                    WGSV (0x05)
                                    WOFF = Zero
                                    WLPC (One)
                                }
                                Else
                                {
                                    WGFL &= 0xFFFFFBFF
                                    WGSV (0x06)
                                    WOFF = One
                                    WLPC (Zero)
                                }
                            }

                            Method (GWAN, 0, NotSerialized)
                            {
                                Local0 = Zero
                                If (WANP)
                                {
                                    Local0 = One
                                    WGFL |= One
                                }
                                Else
                                {
                                    WGFL &= 0xFFFFFFFE
                                }

                                If (CWAI)
                                {
                                    WGFL |= 0x08
                                }

                                If (WGFL & 0x08)
                                {
                                    Return (Local0)
                                }

                                If (WPWS ())
                                {
                                    Local0 |= 0x02
                                }
                                Else
                                {
                                    Local0 &= 0xFFFFFFFD
                                }

                                Local0 |= 0x04
                                Return (Local0)
                            }

                            Method (SWAN, 1, NotSerialized)
                            {
                                If ((Arg0 & 0x02) && ((WGFL & One) && !
                                    (WGFL & 0x08)))
                                {
                                    WGFL |= 0x04
                                    WGSV (0x02)
                                    WPWC (One)
                                }
                                Else
                                {
                                    WGFL &= 0xFFFFFFFB
                                    WGSV (0x03)
                                    WPWC (Zero)
                                }
                            }

                            Method (GBDC, 0, NotSerialized)
                            {
                                Local0 = Zero
                                If (BTMD)
                                {
                                    Local0 = One
                                    WGFL |= 0x10
                                }
                                Else
                                {
                                    WGFL &= 0xFFFFFFEF
                                }

                                If (CBCI)
                                {
                                    WGFL = 0x80
                                    Return (Local0)
                                }

                                If (BPWS ())
                                {
                                    Local0 |= 0x02
                                }
                                Else
                                {
                                    Local0 &= 0xFFFFFFFD
                                }

                                Local0 |= 0x04
                                Return (Local0)
                            }

                            Method (SBDC, 1, NotSerialized)
                            {
                                If ((Arg0 & 0x02) && ((WGFL & 0x10) && !
                                    (WGFL & 0x80)))
                                {
                                    WGFL |= 0x40
                                    BLTH (0x02)
                                    BPWC (One)
                                }
                                Else
                                {
                                    WGFL &= 0xFFFFFFBF
                                    BLTH (0x03)
                                    BPWC (Zero)
                                }

                                If (Arg0 & 0x04)
                                {
                                    WGFL |= 0x40
                                }
                                Else
                                {
                                    WGFL &= 0xFFFFFFFFFFFFFFBF
                                }
                            }

                            Method (WLPS, 0, NotSerialized)
                            {
                                If (ECON)
                                {
                                    Local0 = DCWL /* \_SB_.PCI0.LPCB.EC__.DCWL */
                                }
                                Else
                                {
                                    Local0 = ((RBEC (0x3A) & 0x20) >> 0x06)
                                }

                                Return (Local0)
                            }

                            Method (WLTG, 0, NotSerialized)
                            {
                                If (WGFL & 0x0100)
                                {
                                    WLPC (!WLPS ())
                                }
                            }

                            Method (WLPC, 1, NotSerialized)
                            {
                                WANA = One
                                If (Arg0 && (GSTS && (WGSV (One) & 0x0400)))
                                {
                                    If (ECON)
                                    {
                                        DCWL = One
                                    }
                                    Else
                                    {
                                        MBEC (0x3A, 0xFF, 0x20)
                                    }

                                    If (WLNP)
                                    {
                                        PWON (0x0200, One)
                                    }

                                    WGFL |= 0x0200
                                }
                                ElseIf (ECON)
                                {
                                    DCWL = Zero
                                }
                                Else
                                {
                                    MBEC (0x3A, 0xDF, Zero)
                                }
                            }

                            Method (WPWS, 0, NotSerialized)
                            {
                                If (ECON)
                                {
                                    Local0 = DCWW /* \_SB_.PCI0.LPCB.EC__.DCWW */
                                }
                                Else
                                {
                                    Local0 = ((RBEC (0x3A) & 0x40) >> 0x06)
                                }

                                Return (Local0)
                            }

                            Method (WTGL, 0, NotSerialized)
                            {
                                If (WGFL & One)
                                {
                                    WPWC (!WPWS ())
                                }
                            }

                            Method (WPWC, 1, NotSerialized)
                            {
                                WWNA = One
                                If (Arg0 && (GSTS && (WGSV (One) & 0x04)))
                                {
                                    If (ECON)
                                    {
                                        DCWW = One
                                    }
                                    Else
                                    {
                                        MBEC (0x3A, 0xFF, 0x40)
                                    }

                                    If (WANP)
                                    {
                                        PWON (0x02, One)
                                    }

                                    WGFL |= 0x02
                                }
                                ElseIf (ECON)
                                {
                                    DCWW = Zero
                                }
                                Else
                                {
                                    MBEC (0x3A, 0xBF, Zero)
                                }

                                WALA = DCWW /* \_SB_.PCI0.LPCB.EC__.DCWW */
                            }

                            Method (BPWS, 0, NotSerialized)
                            {
                                If (ECON)
                                {
                                    Local0 = DCBD /* \_SB_.PCI0.LPCB.EC__.DCBD */
                                }
                                Else
                                {
                                    Local0 = ((RBEC (0x3A) & 0x10) >> 0x04)
                                }

                                Return (Local0)
                            }

                            Method (BTGL, 0, NotSerialized)
                            {
                                If (WGFL & 0x10)
                                {
                                    BPWC (!BPWS ())
                                }
                            }

                            Method (BPWC, 1, NotSerialized)
                            {
                                BTHA = One
                                If (Arg0 && (GSTS && (WGSV (One) & 0x40)))
                                {
                                    If (ECON)
                                    {
                                        DCBD = One
                                        If (BTMD)
                                        {
                                            PWON (0x20, DCBD)
                                        }
                                    }
                                    Else
                                    {
                                        MBEC (0x3A, 0xFF, 0x10)
                                    }

                                    WGFL |= 0x20
                                }
                                ElseIf (ECON)
                                {
                                    DCBD = Zero
                                    PWON (0x20, DCBD)
                                }
                                Else
                                {
                                    MBEC (0x3A, 0xEF, Zero)
                                }
                            }

                            Method (WGIN, 0, NotSerialized)
                            {
                                WGFL = Zero
                                WGFL = WGSV (Zero)
                                If (OSYS >= 0x07DC)
                                {
                                    PWON (0x0222, 0x03)
                                }
                            }

                            Method (WGPS, 1, NotSerialized)
                            {
                                If (Arg0 >= 0x04)
                                {
                                    BLTH (0x05)
                                }

                                If (!(WGFL & 0x04))
                                {
                                    WPWC (Zero)
                                }

                                If (!(WGFL & 0x40))
                                {
                                    BPWC (Zero)
                                }
                            }

                            Method (WGWK, 1, NotSerialized)
                            {
                                If (WGFL & 0x20)
                                {
                                    BPWC (One)
                                }

                                If (WGFL & 0x02)
                                {
                                    WPWC (One)
                                }
                            }

                            Method (TVLG, 0, NotSerialized)
                            {
                                Local0 = Zero
                                Return (Local0)
                            }

                            Method (TVLS, 1, NotSerialized)
                            {
                                Local0 = Zero
                                Local0 = Arg0
                                Local0 &= 0x02
                                If (Local0)
                                {
                                    Local0 = Arg0
                                    Local0 &= One
                                    If (Local0)
                                    {
                                        Local0 = Arg0
                                        Local0 &= 0xFF00
                                        Local0 >>= 0x08
                                        If (Local0 == Zero) {}
                                        If (Local0 == One) {}
                                        If (Local0 == 0x02) {}
                                    }
                                    Else
                                    {
                                    }
                                }
                                Else
                                {
                                }
                            }

                            Method (GLSI, 0, NotSerialized)
                            {
                                If (ECON)
                                {
                                    Return ((0x02 + HPLD))
                                }
                                ElseIf (RBEC (0x46) & 0x04)
                                {
                                    Return (0x03)
                                }
                                Else
                                {
                                    Return (0x02)
                                }
                            }

                            Method (NUMG, 0, NotSerialized)
                            {
                                Local0 = Zero
                                Return (Local0)
                            }

                            Method (HKS3, 0, NotSerialized)
                            {
                                If (GSTS)
                                {
                                    If (BTMD)
                                    {
                                        If (DCBD)
                                        {
                                            PWON (0x20, One)
                                        }
                                        Else
                                        {
                                            PWON (0x20, Zero)
                                        }
                                    }
                                    Else
                                    {
                                        PWON (0x20, Zero)
                                        DCBD = Zero
                                    }

                                    If (WANP)
                                    {
                                        If (DCWW)
                                        {
                                            PWON (0x02, One)
                                        }
                                        Else
                                        {
                                            PWON (0x02, Zero)
                                        }
                                    }
                                    Else
                                    {
                                        PWON (0x02, Zero)
                                        DCWW = Zero
                                    }

                                    If (WLNP)
                                    {
                                        If (WOFF)
                                        {
                                            PWON (0x0200, Zero)
                                        }
                                        ElseIf (DCWL)
                                        {
                                            PWON (0x0200, One)
                                        }
                                        Else
                                        {
                                            PWON (0x0200, Zero)
                                        }
                                    }
                                    Else
                                    {
                                        PWON (0x0200, Zero)
                                        DCWL = Zero
                                    }
                                }
                                Else
                                {
                                    PWON (0x0222, Zero)
                                }
                            }
                        }
                    }
                }

                Scope (\_SB)
                {
                    Device (ACAD)
                    {
                        Name (_HID, "ACPI0003" /* Power Source Device */)  // _HID: Hardware ID
                        Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
                        {
                            _SB
                        })
                        Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
                        {
                            If (ECON)
                            {
                                ACSS = ^^PCI0.LPCB.EC.ACPW /* \_SB_.PCI0.LPCB.EC__.ACPW */
                                PWRS = ^^PCI0.LPCB.EC.ACPW /* \_SB_.PCI0.LPCB.EC__.ACPW */
                            }

                            Return (PWRS) /* \PWRS */
                        }
                    }
                }

                Scope (\_SB)
                {
                    Mutex (BATM, 0x00)
                    Name (BASC, One)
                    Name (SBCM, Buffer (One)
                    {
                         0x00                                             /* . */
                    })
                    Name (SBFC, Buffer (0x02)
                    {
                         0x00, 0x00                                       /* .. */
                    })
                    Name (SBDC, Buffer (0x02)
                    {
                         0x00, 0x00                                       /* .. */
                    })
                    Name (SBDV, Buffer (0x02)
                    {
                         0x00, 0x00                                       /* .. */
                    })
                    Name (SBSN, Buffer (0x02)
                    {
                         0x00, 0x00                                       /* .. */
                    })
                    Name (SBDN, Buffer (0x10)
                    {
                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                    })
                    Name (SBCH, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                           /* .... */
                    })
                    Name (SBMN, Buffer (0x10)
                    {
                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                    })
                    Method (GBFE, 3, NotSerialized)
                    {
                        CreateByteField (Arg0, Arg1, TIDX)
                        Arg2 = TIDX /* \_SB_.GBFE.TIDX */
                    }

                    Method (PBFE, 3, NotSerialized)
                    {
                        CreateByteField (Arg0, Arg1, TIDX)
                        TIDX = Arg2
                    }

                    Method (ITOS, 1, NotSerialized)
                    {
                        Local0 = Buffer (0x09)
                            {
                                /* 0000 */  0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* 0....... */
                                /* 0008 */  0x00                                             /* . */
                            }
                        Local7 = Buffer (0x11)
                            {
                                "0123456789ABCDEF"
                            }
                        Local1 = 0x08
                        Local2 = Zero
                        Local3 = Zero
                        While (Local1)
                        {
                            Local1--
                            Local4 = ((Arg0 >> (Local1 << 0x02)) & 0x0F)
                            If (Local4)
                            {
                                Local3 = Ones
                            }

                            If (Local3)
                            {
                                GBFE (Local7, Local4, RefOf (Local5))
                                PBFE (Local0, Local2, Local5)
                                Local2++
                            }
                        }

                        Return (Local0)
                    }

                    Method (WAEC, 0, NotSerialized)
                    {
                        Name (CUNT, 0x14)
                        ^PCI0.LPCB.EC.HSID = Zero
                        While (^PCI0.LPCB.EC.HSID == Zero)
                        {
                            Sleep (0x05)
                            CUNT--
                            If (CUNT == Zero)
                            {
                                Break
                            }
                        }
                    }

                    Method (GBIF, 3, NotSerialized)
                    {
                        If (Arg2)
                        {
                            If (BASC != Zero)
                            {
                                Acquire (BATM, 0xFFFF)
                                ^PCI0.LPCB.EC.HIID = (Arg0 | One)
                                WAEC ()
                                Local7 = ^PCI0.LPCB.EC.SBCM /* \_SB_.PCI0.LPCB.EC__.SBCM */
                                SBCM = ^PCI0.LPCB.EC.SBCM /* \_SB_.PCI0.LPCB.EC__.SBCM */
                                Arg1 [Zero] = (Local7 ^ One)
                                ^PCI0.LPCB.EC.HIID = Arg0
                                WAEC ()
                                If (Local7)
                                {
                                    Arg1 [0x02] = (^PCI0.LPCB.EC.SBFC * 0x0A)
                                }
                                Else
                                {
                                    Arg1 [0x02] = ^PCI0.LPCB.EC.SBFC /* \_SB_.PCI0.LPCB.EC__.SBFC */
                                }

                                SBFC = ^PCI0.LPCB.EC.SBFC /* \_SB_.PCI0.LPCB.EC__.SBFC */
                                ^PCI0.LPCB.EC.HIID = (Arg0 | 0x02)
                                WAEC ()
                                If (Local7)
                                {
                                    Local0 = (^PCI0.LPCB.EC.SBDC * 0x0A)
                                }
                                Else
                                {
                                    Local0 = ^PCI0.LPCB.EC.SBDC /* \_SB_.PCI0.LPCB.EC__.SBDC */
                                }

                                SBDC = ^PCI0.LPCB.EC.SBDC /* \_SB_.PCI0.LPCB.EC__.SBDC */
                                Arg1 [One] = Local0
                                Divide (Local0, 0x14, Local1, Arg1 [0x05])
                                Divide (Local0, 0x64, Local1, Arg1 [0x06])
                                Arg1 [0x04] = ^PCI0.LPCB.EC.SBDV /* \_SB_.PCI0.LPCB.EC__.SBDV */
                                SBDV = ^PCI0.LPCB.EC.SBDV /* \_SB_.PCI0.LPCB.EC__.SBDV */
                                Local0 = ^PCI0.LPCB.EC.SBSN /* \_SB_.PCI0.LPCB.EC__.SBSN */
                                SBSN = ^PCI0.LPCB.EC.SBSN /* \_SB_.PCI0.LPCB.EC__.SBSN */
                                Name (SERN, Buffer (0x06)
                                {
                                    "     "
                                })
                                Local2 = 0x04
                                While (Local0)
                                {
                                    Divide (Local0, 0x0A, Local1, Local0)
                                    SERN [Local2] = (Local1 + 0x30)
                                    Local2--
                                }

                                Arg1 [0x0A] = SERN /* \_SB_.GBIF.SERN */
                                ^PCI0.LPCB.EC.HIID = (Arg0 | 0x06)
                                WAEC ()
                                Arg1 [0x09] = ^PCI0.LPCB.EC.SBDN /* \_SB_.PCI0.LPCB.EC__.SBDN */
                                SBDN = ^PCI0.LPCB.EC.SBDN /* \_SB_.PCI0.LPCB.EC__.SBDN */
                                ^PCI0.LPCB.EC.HIID = (Arg0 | 0x04)
                                WAEC ()
                                Name (BTYP, Buffer (0x05)
                                {
                                     0x00, 0x00, 0x00, 0x00, 0x00                     /* ..... */
                                })
                                BTYP = ^PCI0.LPCB.EC.SBCH /* \_SB_.PCI0.LPCB.EC__.SBCH */
                                SBCH = ^PCI0.LPCB.EC.SBCH /* \_SB_.PCI0.LPCB.EC__.SBCH */
                                Arg1 [0x0B] = BTYP /* \_SB_.GBIF.BTYP */
                                ^PCI0.LPCB.EC.HIID = (Arg0 | 0x05)
                                WAEC ()
                                Arg1 [0x0C] = ^PCI0.LPCB.EC.SBMN /* \_SB_.PCI0.LPCB.EC__.SBMN */
                                SBMN = ^PCI0.LPCB.EC.SBMN /* \_SB_.PCI0.LPCB.EC__.SBMN */
                                BASC = Zero
                                Release (BATM)
                            }
                            Else
                            {
                                Local7 = ToInteger (SBCM)
                                Arg1 [Zero] = (Local7 ^ One)
                                If (Local7)
                                {
                                    Arg1 [0x02] = (ToInteger (SBFC) * 0x0A)
                                }
                                Else
                                {
                                    Arg1 [0x02] = ToInteger (SBFC)
                                }

                                If (Local7)
                                {
                                    Local0 = (ToInteger (SBDC) * 0x0A)
                                }
                                Else
                                {
                                    Local0 = ToInteger (SBDC)
                                }

                                Arg1 [One] = Local0
                                Divide (Local0, 0x14, Local1, Arg1 [0x05])
                                Divide (Local0, 0x64, Local1, Arg1 [0x06])
                                Arg1 [0x04] = ToInteger (SBDV)
                                Local0 = ToInteger (SBSN)
                                Name (SRNB, Buffer (0x06)
                                {
                                    "     "
                                })
                                Local2 = 0x04
                                While (Local0)
                                {
                                    Divide (Local0, 0x0A, Local1, Local0)
                                    SRNB [Local2] = (Local1 + 0x30)
                                    Local2--
                                }

                                Arg1 [0x0A] = SRNB /* \_SB_.GBIF.SRNB */
                                Arg1 [0x09] = ToString (SBDN, Ones)
                                Name (BTTP, Buffer (0x05)
                                {
                                     0x00, 0x00, 0x00, 0x00, 0x00                     /* ..... */
                                })
                                BTTP = ToBuffer (SBCH)
                                Arg1 [0x0B] = BTTP /* \_SB_.GBIF.BTTP */
                                Arg1 [0x0C] = ToString (SBMN, Ones)
                            }
                        }
                        Else
                        {
                            Arg1 [One] = 0xFFFFFFFF
                            Arg1 [0x05] = Zero
                            Arg1 [0x06] = Zero
                            Arg1 [0x02] = 0xFFFFFFFF
                        }

                        Return (Arg1)
                    }

                    Method (GBST, 4, NotSerialized)
                    {
                        If (^PCI0.LPCB.EC.BFUD)
                        {
                            BFUD ()
                        }

                        Acquire (BATM, 0xFFFF)
                        If (Arg1 & 0x20)
                        {
                            Local0 = 0x02
                        }
                        ElseIf (Arg1 & 0x40)
                        {
                            Local0 = One
                        }
                        Else
                        {
                            Local0 = Zero
                        }

                        If (Arg1 & 0x0F) {}
                        Else
                        {
                            Local0 |= 0x04
                        }

                        If ((Arg1 & 0x0F) == 0x0F)
                        {
                            Local0 = 0x04
                            Local1 = Zero
                            Local2 = Zero
                            Local3 = Zero
                        }
                        Else
                        {
                            Local3 = ^PCI0.LPCB.EC.ECVO /* \_SB_.PCI0.LPCB.EC__.ECVO */
                            If (Arg2)
                            {
                                Local2 = (^PCI0.LPCB.EC.ECRC * 0x0A)
                            }
                            Else
                            {
                                Local2 = ^PCI0.LPCB.EC.ECRC /* \_SB_.PCI0.LPCB.EC__.ECRC */
                            }

                            Local1 = ^PCI0.LPCB.EC.ECAC /* \_SB_.PCI0.LPCB.EC__.ECAC */
                            If (Local1 >= 0x8000)
                            {
                                If (Local0 & One)
                                {
                                    Local1 = (0x00010000 - Local1)
                                }
                                Else
                                {
                                    Local1 = Zero
                                }
                            }
                            ElseIf (!(Local0 & 0x02))
                            {
                                Local1 = Zero
                            }

                            If (Arg2)
                            {
                                Local1 *= Local3
                                Divide (Local1, 0x03E8, Local7, Local1)
                            }
                        }

                        Arg3 [Zero] = Local0
                        Arg3 [One] = Local1
                        Arg3 [0x02] = Local2
                        Arg3 [0x03] = Local3
                        Release (BATM)
                        Return (Arg3)
                    }

                    Device (BAT1)
                    {
                        Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
                        Name (_UID, One)  // _UID: Unique ID
                        Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
                        {
                            _SB
                        })
                        Name (B0ST, Zero)
                        Name (BT0I, Package (0x0D)
                        {
                            Zero, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            One, 
                            0x2A30, 
                            Zero, 
                            Zero, 
                            One, 
                            One, 
                            "", 
                            "", 
                            "", 
                            ""
                        })
                        Name (BT0P, Package (0x04) {})
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If (ECON)
                            {
                                If (^^PCI0.LPCB.EC.MBTS != B0ST)
                                {
                                    BASC = One
                                }

                                B0ST = ^^PCI0.LPCB.EC.MBTS /* \_SB_.PCI0.LPCB.EC__.MBTS */
                            }
                            ElseIf (RBEC (0x38) & 0x80)
                            {
                                B0ST = One
                            }
                            Else
                            {
                                B0ST = Zero
                            }

                            If (B0ST)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x0F)
                            }
                        }

                        Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
                        {
                            Local7 = Zero
                            Local6 = 0x01F4
                            While (!Local7 && Local6)
                            {
                                If (^^PCI0.LPCB.EC.MBTS)
                                {
                                    If ((^^PCI0.LPCB.EC.HB0S & 0x0F) == 0x0F)
                                    {
                                        Sleep (0x14)
                                        Local6--
                                    }
                                    Else
                                    {
                                        Local7 = One
                                    }
                                }
                                Else
                                {
                                    Local6 = Zero
                                }
                            }

                            Return (GBIF (Zero, BT0I, Local7))
                        }

                        Method (_BST, 0, NotSerialized)  // _BST: Battery Status
                        {
                            Local0 = (DerefOf (BT0I [Zero]) ^ One)
                            Return (GBST (Zero, ^^PCI0.LPCB.EC.HB0S, Local0, BT0P))
                        }

                        Method (_BTP, 1, NotSerialized)  // _BTP: Battery Trip Point
                        {
                            If (Arg0)
                            {
                                Local1 = Arg0
                                If (!DerefOf (BT0I [Zero]))
                                {
                                    Divide (Local1, 0x0A, Local0, Local1)
                                }

                                ^^PCI0.LPCB.EC.HT0L = (Local1 & 0xFF)
                                ^^PCI0.LPCB.EC.HT0H = ((Local1 >> 0x08) & 0xFF)
                            }
                        }
                    }
                }

                Scope (\_SB)
                {
                    Device (LID)
                    {
                        Name (_HID, EisaId ("PNP0C0D") /* Lid Device */)  // _HID: Hardware ID
                        Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                        {
                            0x19, 
                            0x04
                        })
                        Method (_LID, 0, NotSerialized)  // _LID: Lid Status
                        {
                            If (ECON)
                            {
                                Local0 = ^^PCI0.LPCB.EC.HPLD /* \_SB_.PCI0.LPCB.EC__.HPLD */
                                ^^PCI0.GFX0.CLID = Local0
                                Return (Local0)
                            }
                            ElseIf (RBEC (0x46) & 0x04)
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                        {
                            If (ECON)
                            {
                                If (Arg0)
                                {
                                    ^^PCI0.LPCB.EC.HWLO = One
                                }
                                Else
                                {
                                    ^^PCI0.LPCB.EC.HWLO = Zero
                                }
                            }
                            ElseIf (Arg0)
                            {
                                MBEC (0x32, 0xFF, 0x04)
                            }
                            Else
                            {
                                MBEC (0x32, 0xFB, Zero)
                            }

                            If (Arg0)
                            {
                                LIDX = One
                            }
                            Else
                            {
                                LIDX = Zero
                            }
                        }
                    }
                }

                Scope (\_SB)
                {
                    Device (WMI1)
                    {
                        Name (_HID, EisaId ("PNP0C14") /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
                        Name (_UID, One)  // _UID: Unique ID
                        Name (_WDG, Buffer (0xB4)
                        {
                            /* 0000 */  0x0E, 0x23, 0xF5, 0x51, 0x77, 0x96, 0xCD, 0x46,  /* .#.Qw..F */
                            /* 0008 */  0xA1, 0xCF, 0xC0, 0xB2, 0x3E, 0xE3, 0x4D, 0xB7,  /* ....>.M. */
                            /* 0010 */  0x41, 0x30, 0x80, 0x05, 0x64, 0x9A, 0x47, 0x98,  /* A0..d.G. */
                            /* 0018 */  0xF5, 0x33, 0x33, 0x4E, 0xA7, 0x07, 0x8E, 0x25,  /* .33N...% */
                            /* 0020 */  0x1E, 0xBB, 0xC3, 0xA1, 0x41, 0x31, 0x01, 0x06,  /* ....A1.. */
                            /* 0028 */  0xEF, 0x54, 0x4B, 0x6A, 0xED, 0xA5, 0x33, 0x4D,  /* .TKj..3M */
                            /* 0030 */  0x94, 0x55, 0xB0, 0xD9, 0xB4, 0x8D, 0xF4, 0xB3,  /* .U...... */
                            /* 0038 */  0x41, 0x32, 0x01, 0x06, 0xB6, 0xEB, 0xF1, 0x74,  /* A2.....t */
                            /* 0040 */  0x7A, 0x92, 0x7D, 0x4C, 0x95, 0xDF, 0x69, 0x8E,  /* z.}L..i. */
                            /* 0048 */  0x21, 0xE8, 0x0E, 0xB5, 0x41, 0x33, 0x01, 0x06,  /* !...A3.. */
                            /* 0050 */  0xFF, 0x04, 0xEF, 0x7E, 0x28, 0x43, 0x7C, 0x44,  /* ...~(C|D */
                            /* 0058 */  0xB5, 0xBB, 0xD4, 0x49, 0x92, 0x5D, 0x53, 0x8D,  /* ...I.]S. */
                            /* 0060 */  0x41, 0x34, 0x01, 0x06, 0x9E, 0x15, 0xDB, 0x8A,  /* A4...... */
                            /* 0068 */  0x32, 0x1E, 0x5C, 0x45, 0xBC, 0x93, 0x30, 0x8A,  /* 2.\E..0. */
                            /* 0070 */  0x7E, 0xD9, 0x82, 0x46, 0x41, 0x35, 0x01, 0x01,  /* ~..FA5.. */
                            /* 0078 */  0xFD, 0xD9, 0x51, 0x26, 0x1C, 0x91, 0x69, 0x4B,  /* ..Q&..iK */
                            /* 0080 */  0xB9, 0x4E, 0xD0, 0xDE, 0xD5, 0x96, 0x3B, 0xD7,  /* .N....;. */
                            /* 0088 */  0x41, 0x36, 0x01, 0x06, 0x1A, 0x65, 0x64, 0x73,  /* A6...eds */
                            /* 0090 */  0x2F, 0x13, 0xE7, 0x4F, 0xAD, 0xAA, 0x40, 0xC6,  /* /..O..@. */
                            /* 0098 */  0xC7, 0xEE, 0x2E, 0x3B, 0x41, 0x37, 0x01, 0x06,  /* ...;A7.. */
                            /* 00A0 */  0x21, 0x12, 0x90, 0x05, 0x66, 0xD5, 0xD1, 0x11,  /* !...f... */
                            /* 00A8 */  0xB2, 0xF0, 0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10,  /* ......). */
                            /* 00B0 */  0x42, 0x41, 0x01, 0x00                           /* BA.. */
                        })
                        Name (RETN, Package (0x05)
                        {
                            "Success", 
                            "Not Supported", 
                            "Invalid Parameter", 
                            "Access Denied", 
                            "System Busy"
                        })
                        Name (ITEM, Package (0x31)
                        {
                            Package (0x02)
                            {
                                0x0E, 
                                "WakeOnLAN"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "EthernetLANOptionROM"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "IPv4NetworkStack"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "IPv6NetworkStack"
                            }, 

                            Package (0x02)
                            {
                                0x13, 
                                "UefiPxeBootPriority"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "USBBIOSSupport"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "AlwaysOnUSB"
                            }, 

                            Package (0x02)
                            {
                                0x10, 
                                "USB30Mode"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "FnCtrlKeySwap"
                            }, 

                            Package (0x02)
                            {
                                0x05, 
                                "BootDisplayDevice"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "SpeedStep"
                            }, 

                            Package (0x02)
                            {
                                One, 
                                "CPUPowerManagement"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "PasswordBeep"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "KeyboardBeep"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "LockBIOSSetting"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "BIOSPasswordAtUnattendedBoot"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "BIOSPasswordAtReboot"
                            }, 

                            Package (0x02)
                            {
                                0x0B, 
                                "MinimumPasswordLength"
                            }, 

                            Package (0x02)
                            {
                                0x02, 
                                "SecurityChip"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "PhysicalPresenceForTpmProvision"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "PhysicalPresenceForTpmClear"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "BIOSUpdateByEndUsers"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "SecureRollBackPrevention"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "DataExecutionPrevention"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "VirtualizationTechnology"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "EthernetLANAccess"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "WirelessLANAccess"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "BluetoothAccess"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "USBPortAccess"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "MemoryCardSlotAccess"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "IntegratedCameraAccess"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "MicrophoneAccess"
                            }, 

                            Package (0x02)
                            {
                                0x0F, 
                                "ComputraceModuleActivation"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "SecureBoot"
                            }, 

                            Package (0x02)
                            {
                                0x64, 
                                "BootOrder"
                            }, 

                            Package (0x02)
                            {
                                0x64, 
                                "NetworkBoot"
                            }, 

                            Package (0x02)
                            {
                                0x0A, 
                                "BootMode"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "StartupOptionKeys"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "BootDeviceListF12Option"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "BootOrderLock"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "FnSticky"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "FnAsPrimary"
                            }, 

                            Package (0x02)
                            {
                                0x15, 
                                "BootTimeExtension"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "SVPassword"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "BIOSPasswordAtBootDeviceList"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "PasswordCountExceededError"
                            }, 

                            Package (0x02)
                            {
                                0x09, 
                                "AdaptiveThermalManagementAC"
                            }, 

                            Package (0x02)
                            {
                                0x09, 
                                "AdaptiveThermalManagementBattery"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "InternalStorageTamper"
                            }
                        })
                        Name (VSEL, Package (0x17)
                        {
                            Package (0x02)
                            {
                                "Disable", 
                                "Enable"
                            }, 

                            Package (0x02)
                            {
                                "Disable", 
                                "Automatic"
                            }, 

                            Package (0x03)
                            {
                                "Active", 
                                "Inactive", 
                                "Disable"
                            }, 

                            Package (0x02)
                            {
                                "Normal", 
                                "High"
                            }, 

                            Package (0x02)
                            {
                                "Independent", 
                                "Synchronized"
                            }, 

                            Package (0x04)
                            {
                                "LCD", 
                                "DisplayPort", 
                                "HDMI", 
                                "DockDisplay"
                            }, 

                            Package (0x03)
                            {
                                "High", 
                                "Normal", 
                                "Silent"
                            }, 

                            Package (0x02)
                            {
                                "Compatibility", 
                                "AHCI"
                            }, 

                            Package (0x02)
                            {
                                "External", 
                                "InternalOnly"
                            }, 

                            Package (0x02)
                            {
                                "MaximizePerformance", 
                                "Balanced"
                            }, 

                            Package (0x02)
                            {
                                "Quick", 
                                "Diagnostics"
                            }, 

                            Package (0x0A)
                            {
                                "Disable", 
                                "4", 
                                "5", 
                                "6", 
                                "7", 
                                "8", 
                                "9", 
                                "10", 
                                "11", 
                                "12"
                            }, 

                            Package (0x03)
                            {
                                "Auto", 
                                "On", 
                                "Off"
                            }, 

                            Package (0x03)
                            {
                                "IntegratedGfx", 
                                "DiscreteGfx", 
                                "SwitchableGfx"
                            }, 

                            Package (0x04)
                            {
                                "Disable", 
                                "ACOnly", 
                                "ACandBattery", 
                                "Enable"
                            }, 

                            Package (0x03)
                            {
                                "Disable", 
                                "Enable", 
                                "Disable"
                            }, 

                            Package (0x04)
                            {
                                "Disable", 
                                "Enable", 
                                "Automatic", 
                                "SmartAuto"
                            }, 

                            Package (0x02)
                            {
                                "Generation1", 
                                "Automatic"
                            }, 

                            Package (0x03)
                            {
                                "ThinkLightOnly", 
                                "BacklightOnly", 
                                "Both"
                            }, 

                            Package (0x02)
                            {
                                "IPv6First", 
                                "IPv4First"
                            }, 

                            Package (0x02)
                            {
                                "Off", 
                                "On"
                            }, 

                            Package (0x02)
                            {
                                "Default", 
                                "Legacy"
                            }, 

                            Package (0x0B)
                            {
                                "Disable", 
                                "1", 
                                "2", 
                                "3", 
                                "", 
                                "5", 
                                "", 
                                "", 
                                "", 
                                "", 
                                "10"
                            }
                        })
                        Name (VLST, Package (0x0F)
                        {
                            "HDD0", 
                            "HDD1", 
                            "HDD2", 
                            "HDD3", 
                            "HDD4", 
                            "PCILAN", 
                            "ATAPICD0", 
                            "ATAPICD1", 
                            "ATAPICD2", 
                            "USBFDD", 
                            "USBCD", 
                            "USBHDD", 
                            "OtherHDD", 
                            "OtherCD", 
                            "NODEV"
                        })
                        Name (PENC, Package (0x02)
                        {
                            "ascii", 
                            "scancode"
                        })
                        Name (PKBD, Package (0x03)
                        {
                            "us", 
                            "fr", 
                            "gr"
                        })
                        Name (PTYP, Package (0x08)
                        {
                            "pap", 
                            "pop", 
                            "uhdp1", 
                            "mhdp1", 
                            "uhdp2", 
                            "mhdp2", 
                            "uhdp3", 
                            "mhdp3"
                        })
                        Mutex (MWMI, 0x07)
                        Name (PCFG, Buffer (0x18) {})
                        Name (IBUF, Buffer (0x0100) {})
                        Name (ILEN, Zero)
                        Name (PSTR, Buffer (0x81) {})
                        Method (WQA0, 1, NotSerialized)
                        {
                            Acquire (MWMI, 0xFFFF)
                            If (WMIS (Zero, Arg0) != Zero)
                            {
                                Release (MWMI)
                                Return ("")
                            }

                            Local0 = DerefOf (ITEM [WITM])
                            Local1 = DerefOf (Local0 [Zero])
                            Local2 = DerefOf (Local0 [One])
                            If (Local1 < 0x64)
                            {
                                Concatenate (Local2, ",", Local6)
                                Local3 = DerefOf (VSEL [Local1])
                                Concatenate (Local6, DerefOf (Local3 [WSEL]), Local7)
                            }
                            Else
                            {
                                Local3 = SizeOf (VLST)
                                If (WLS0 <= Local3)
                                {
                                    Concatenate (Local2, ",", Local7)
                                    Concatenate (Local7, DerefOf (VLST [WLS0]), Local2)
                                }

                                If (WLS1 <= Local3)
                                {
                                    Concatenate (Local2, ":", Local7)
                                    Concatenate (Local7, DerefOf (VLST [WLS1]), Local2)
                                }

                                If (WLS2 <= Local3)
                                {
                                    Concatenate (Local2, ":", Local7)
                                    Concatenate (Local7, DerefOf (VLST [WLS2]), Local2)
                                }

                                If (WLS3 <= Local3)
                                {
                                    Concatenate (Local2, ":", Local7)
                                    Concatenate (Local7, DerefOf (VLST [WLS3]), Local2)
                                }

                                If (WLS4 <= Local3)
                                {
                                    Concatenate (Local2, ":", Local7)
                                    Concatenate (Local7, DerefOf (VLST [WLS4]), Local2)
                                }

                                If (WLS5 <= Local3)
                                {
                                    Concatenate (Local2, ":", Local7)
                                    Concatenate (Local7, DerefOf (VLST [WLS5]), Local2)
                                }

                                If (WLS6 <= Local3)
                                {
                                    Concatenate (Local2, ":", Local7)
                                    Concatenate (Local7, DerefOf (VLST [WLS6]), Local2)
                                }

                                If (WLS7 <= Local3)
                                {
                                    Concatenate (Local2, ":", Local7)
                                    Concatenate (Local7, DerefOf (VLST [WLS7]), Local2)
                                }

                                If (WLS8 <= Local3)
                                {
                                    Concatenate (Local2, ":", Local7)
                                    Concatenate (Local7, DerefOf (VLST [WLS8]), Local2)
                                }

                                If (WLS9 <= Local3)
                                {
                                    Concatenate (Local2, ":", Local7)
                                    Concatenate (Local7, DerefOf (VLST [WLS9]), Local2)
                                }

                                If (WLSA <= Local3)
                                {
                                    Concatenate (Local2, ":", Local7)
                                    Concatenate (Local7, DerefOf (VLST [WLSA]), Local2)
                                }

                                If (WLSB <= Local3)
                                {
                                    Concatenate (Local2, ":", Local7)
                                    Concatenate (Local7, DerefOf (VLST [WLSB]), Local2)
                                }

                                If (WLSC <= Local3)
                                {
                                    Concatenate (Local2, ":", Local7)
                                    Concatenate (Local7, DerefOf (VLST [WLSC]), Local2)
                                }

                                If (WLSD <= Local3)
                                {
                                    Concatenate (Local2, ":", Local7)
                                    Concatenate (Local7, DerefOf (VLST [WLSD]), Local2)
                                }

                                Local7 = Local2
                            }

                            Release (MWMI)
                            Return (Local7)
                        }

                        Method (WMA1, 3, NotSerialized)
                        {
                            Acquire (MWMI, 0xFFFF)
                            If (SizeOf (Arg2) == Zero)
                            {
                                Local0 = 0x02
                            }
                            Else
                            {
                                Local0 = CARG (Arg2)
                                If (Local0 == Zero)
                                {
                                    Local0 = WSET (ITEM, VSEL)
                                    If (Local0 == Zero)
                                    {
                                        Local0 = WMIS (One, Zero)
                                    }
                                }
                            }

                            Release (MWMI)
                            Return (DerefOf (RETN [Local0]))
                        }

                        Method (WMA2, 3, NotSerialized)
                        {
                            Acquire (MWMI, 0xFFFF)
                            Local0 = CARG (Arg2)
                            If (Local0 == Zero)
                            {
                                If (ILEN != Zero)
                                {
                                    Local0 = CPAS (IBUF, Zero)
                                }

                                If (Local0 == Zero)
                                {
                                    Local0 = WMIS (0x02, Zero)
                                }
                            }

                            Release (MWMI)
                            Return (DerefOf (RETN [Local0]))
                        }

                        Method (WMA3, 3, NotSerialized)
                        {
                            Acquire (MWMI, 0xFFFF)
                            Local0 = CARG (Arg2)
                            If (Local0 == Zero)
                            {
                                If (ILEN != Zero)
                                {
                                    Local0 = CPAS (IBUF, Zero)
                                }

                                If (Local0 == Zero)
                                {
                                    Local0 = WMIS (0x03, Zero)
                                }
                            }

                            Release (MWMI)
                            Return (DerefOf (RETN [Local0]))
                        }

                        Method (WMA4, 3, NotSerialized)
                        {
                            Acquire (MWMI, 0xFFFF)
                            Local0 = CARG (Arg2)
                            If (Local0 == Zero)
                            {
                                If (ILEN != Zero)
                                {
                                    Local0 = CPAS (IBUF, Zero)
                                }

                                If (Local0 == Zero)
                                {
                                    Local0 = WMIS (0x04, Zero)
                                }
                            }

                            Release (MWMI)
                            Return (DerefOf (RETN [Local0]))
                        }

                        Method (WQA5, 1, NotSerialized)
                        {
                            Acquire (MWMI, 0xFFFF)
                            Local0 = WMIS (0x05, Zero)
                            PCFG [Zero] = WSPM /* \WSPM */
                            PCFG [0x04] = WSPS /* \WSPS */
                            PCFG [0x08] = WSMN /* \WSMN */
                            PCFG [0x0C] = WSMX /* \WSMX */
                            PCFG [0x10] = WSEN /* \WSEN */
                            PCFG [0x14] = WSKB /* \WSKB */
                            Release (MWMI)
                            Return (PCFG) /* \_SB_.WMI1.PCFG */
                        }

                        Method (WMA6, 3, NotSerialized)
                        {
                            Acquire (MWMI, 0xFFFF)
                            If (SizeOf (Arg2) == Zero)
                            {
                                Local0 = 0x02
                            }
                            Else
                            {
                                Local0 = CARG (Arg2)
                                If (Local0 == Zero)
                                {
                                    If (ILEN != Zero)
                                    {
                                        Local0 = SPAS (IBUF)
                                    }

                                    If (Local0 == Zero)
                                    {
                                        Local0 = WMIS (0x06, Zero)
                                    }
                                }
                            }

                            Release (MWMI)
                            Return (DerefOf (RETN [Local0]))
                        }

                        Method (WMA7, 3, NotSerialized)
                        {
                            If (SizeOf (Arg2) == Zero)
                            {
                                Return ("")
                            }

                            Local0 = CARG (Arg2)
                            If (Local0 == Zero)
                            {
                                Local1 = GITM (IBUF, ITEM)
                                If (Local1 == Ones)
                                {
                                    Return ("")
                                }

                                Local0 = DerefOf (ITEM [Local1])
                                Local1 = DerefOf (Local0 [Zero])
                                If (Local1 < 0x64)
                                {
                                    Local3 = DerefOf (VSEL [Local1])
                                    Local2 = DerefOf (Local3 [Zero])
                                    Local4 = SizeOf (Local3)
                                    Local5 = One
                                    While (Local5 < Local4)
                                    {
                                        Local6 = DerefOf (Local3 [Local5])
                                        If (SizeOf (Local6) != Zero)
                                        {
                                            Concatenate (Local2, ",", Local7)
                                            Concatenate (Local7, Local6, Local2)
                                        }

                                        Local5++
                                    }
                                }
                                Else
                                {
                                    Local2 = DerefOf (VLST [Zero])
                                    Local4 = SizeOf (VLST)
                                    Local5 = One
                                    While (Local5 < Local4)
                                    {
                                        Local6 = DerefOf (VLST [Local5])
                                        Concatenate (Local2, ",", Local7)
                                        Concatenate (Local7, Local6, Local2)
                                        Local5++
                                    }
                                }
                            }

                            Return (Local2)
                        }

                        Method (CARG, 1, NotSerialized)
                        {
                            Local0 = SizeOf (Arg0)
                            If (Local0 == Zero)
                            {
                                IBUF = Zero
                                ILEN = Zero
                                Return (Zero)
                            }

                            If (ObjectType (Arg0) != 0x02)
                            {
                                Return (0x02)
                            }

                            If (Local0 >= 0xFF)
                            {
                                Return (0x02)
                            }

                            IBUF = Arg0
                            Local0--
                            Local1 = DerefOf (IBUF [Local0])
                            If ((Local1 == 0x3B) || (Local1 == 0x2A))
                            {
                                IBUF [Local0] = Zero
                                ILEN = Local0
                            }
                            Else
                            {
                                ILEN = SizeOf (Arg0)
                            }

                            Return (Zero)
                        }

                        Method (SCMP, 3, NotSerialized)
                        {
                            Local0 = SizeOf (Arg0)
                            If (Local0 == Zero)
                            {
                                Return (Zero)
                            }

                            Local0++
                            Name (STR1, Buffer (Local0) {})
                            STR1 = Arg0
                            Local0--
                            Local1 = Zero
                            Local2 = Arg2
                            While (Local1 < Local0)
                            {
                                Local3 = DerefOf (STR1 [Local1])
                                Local4 = DerefOf (Arg1 [Local2])
                                If (Local3 != Local4)
                                {
                                    Return (Zero)
                                }

                                Local1++
                                Local2++
                            }

                            Local4 = DerefOf (Arg1 [Local2])
                            If (Local4 == Zero)
                            {
                                Return (One)
                            }

                            If ((Local4 == 0x2C) || (Local4 == 0x3A))
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }

                        Method (GITM, 2, NotSerialized)
                        {
                            Local0 = Zero
                            Local1 = SizeOf (Arg1)
                            While (Local0 < Local1)
                            {
                                Local3 = DerefOf (DerefOf (Arg1 [Local0]) [One])
                                If (SCMP (Local3, Arg0, Zero))
                                {
                                    Return (Local0)
                                }

                                Local0++
                            }

                            Return (Ones)
                        }

                        Method (GSEL, 3, NotSerialized)
                        {
                            Local0 = Zero
                            Local1 = SizeOf (Arg0)
                            While (Local0 < Local1)
                            {
                                Local2 = DerefOf (Arg0 [Local0])
                                If (SCMP (Local2, Arg1, Arg2))
                                {
                                    Return (Local0)
                                }

                                Local0++
                            }

                            Return (Ones)
                        }

                        Method (SLEN, 2, NotSerialized)
                        {
                            Local0 = DerefOf (Arg0 [Arg1])
                            Return (SizeOf (Local0))
                        }

                        Method (CLRP, 0, NotSerialized)
                        {
                            WPAS = Zero
                            WPNW = Zero
                        }

                        Method (GPAS, 2, NotSerialized)
                        {
                            Local0 = Arg1
                            Local1 = Zero
                            While (Local1 <= 0x80)
                            {
                                Local2 = DerefOf (Arg0 [Local0])
                                If ((Local2 == 0x2C) || (Local2 == Zero))
                                {
                                    PSTR [Local1] = Zero
                                    Return (Local1)
                                }

                                PSTR [Local1] = Local2
                                Local0++
                                Local1++
                            }

                            PSTR [Local1] = Zero
                            Return (Ones)
                        }

                        Method (CPAS, 2, NotSerialized)
                        {
                            CLRP ()
                            Local0 = Arg1
                            Local1 = GPAS (Arg0, Local0)
                            If (Local1 == Ones)
                            {
                                Return (0x02)
                            }

                            If (Local1 == Zero)
                            {
                                Return (0x02)
                            }

                            WPAS = PSTR /* \_SB_.WMI1.PSTR */
                            Local0 += Local1
                            Local0++
                            Local6 = GSEL (PENC, Arg0, Local0)
                            If (Local6 == Ones)
                            {
                                Return (0x02)
                            }

                            WENC = Local6
                            If (Local6 == Zero)
                            {
                                Local0 += SLEN (PENC, Zero)
                                If (DerefOf (Arg0 [Local0]) != 0x2C)
                                {
                                    Return (0x02)
                                }

                                Local0++
                                Local6 = GSEL (PKBD, Arg0, Local0)
                                If (Local6 == Ones)
                                {
                                    Return (0x02)
                                }

                                WKBD = Local6
                            }

                            Return (Zero)
                        }

                        Method (SPAS, 1, NotSerialized)
                        {
                            CLRP ()
                            Local6 = GSEL (PTYP, Arg0, Zero)
                            If (Local6 == Ones)
                            {
                                Return (0x02)
                            }

                            WPTY = Local6
                            Local0 = SLEN (PTYP, Local6)
                            If (DerefOf (Arg0 [Local0]) != 0x2C)
                            {
                                Return (0x02)
                            }

                            Local0++
                            Local1 = GPAS (Arg0, Local0)
                            If ((Local1 == Ones) || (Local1 == Zero))
                            {
                                Return (0x02)
                            }

                            WPAS = PSTR /* \_SB_.WMI1.PSTR */
                            Local0 += Local1
                            If (DerefOf (Arg0 [Local0]) != 0x2C)
                            {
                                Return (0x02)
                            }

                            Local0++
                            Local1 = GPAS (Arg0, Local0)
                            If (Local1 == Ones)
                            {
                                Return (0x02)
                            }

                            If (Local1 == Zero)
                            {
                                PSTR = Zero
                            }

                            WPNW = PSTR /* \_SB_.WMI1.PSTR */
                            Local0 += Local1
                            Local0++
                            Local6 = GSEL (PENC, Arg0, Local0)
                            If (Local6 == Ones)
                            {
                                Return (0x02)
                            }

                            WENC = Local6
                            If (Local6 == Zero)
                            {
                                Local0 += SLEN (PENC, Zero)
                                If (DerefOf (Arg0 [Local0]) != 0x2C)
                                {
                                    Return (0x02)
                                }

                                Local0++
                                Local6 = GSEL (PKBD, Arg0, Local0)
                                If (Local6 == Ones)
                                {
                                    Return (0x02)
                                }

                                WKBD = Local6
                            }

                            Return (Zero)
                        }

                        Method (WSET, 2, NotSerialized)
                        {
                            Local0 = ILEN /* \_SB_.WMI1.ILEN */
                            Local0++
                            Local1 = GITM (IBUF, Arg0)
                            If (Local1 == Ones)
                            {
                                Return (0x02)
                            }

                            WITM = Local1
                            Local3 = DerefOf (Arg0 [Local1])
                            Local4 = DerefOf (Local3 [One])
                            Local2 = SizeOf (Local4)
                            Local2++
                            Local4 = DerefOf (Local3 [Zero])
                            If (Local4 < 0x64)
                            {
                                Local5 = DerefOf (Arg1 [Local4])
                                Local6 = GSEL (Local5, IBUF, Local2)
                                If (Local6 == Ones)
                                {
                                    Return (0x02)
                                }

                                WSEL = Local6
                                Local2 += SLEN (Local5, Local6)
                                Local4 = DerefOf (IBUF [Local2])
                            }
                            Else
                            {
                                WLS0 = 0x3F
                                WLS1 = 0x3F
                                WLS2 = 0x3F
                                WLS3 = 0x3F
                                WLS4 = 0x3F
                                WLS5 = 0x3F
                                WLS6 = 0x3F
                                WLS7 = 0x3F
                                WLS8 = 0x3F
                                WLS9 = 0x3F
                                WLSA = 0x3F
                                WLSB = 0x3F
                                WLSC = 0x3F
                                WLSD = 0x3F
                                Local6 = GSEL (VLST, IBUF, Local2)
                                If (Local6 == Ones)
                                {
                                    Return (0x02)
                                }

                                WLS0 = Local6
                                Local2 += SLEN (VLST, Local6)
                                Local4 = DerefOf (IBUF [Local2])
                                If ((Local2 < Local0) && (Local4 == 0x3A))
                                {
                                    Local2++
                                    Local6 = GSEL (VLST, IBUF, Local2)
                                    If (Local6 == Ones)
                                    {
                                        Return (0x02)
                                    }

                                    WLS1 = Local6
                                    Local2 += SLEN (VLST, Local6)
                                    Local4 = DerefOf (IBUF [Local2])
                                }

                                If ((Local2 < Local0) && (Local4 == 0x3A))
                                {
                                    Local2++
                                    Local6 = GSEL (VLST, IBUF, Local2)
                                    If (Local6 == Ones)
                                    {
                                        Return (0x02)
                                    }

                                    WLS2 = Local6
                                    Local2 += SLEN (VLST, Local6)
                                    Local4 = DerefOf (IBUF [Local2])
                                }

                                If ((Local2 < Local0) && (Local4 == 0x3A))
                                {
                                    Local2++
                                    Local6 = GSEL (VLST, IBUF, Local2)
                                    If (Local6 == Ones)
                                    {
                                        Return (0x02)
                                    }

                                    WLS3 = Local6
                                    Local2 += SLEN (VLST, Local6)
                                    Local4 = DerefOf (IBUF [Local2])
                                }

                                If ((Local2 < Local0) && (Local4 == 0x3A))
                                {
                                    Local2++
                                    Local6 = GSEL (VLST, IBUF, Local2)
                                    If (Local6 == Ones)
                                    {
                                        Return (0x02)
                                    }

                                    WLS4 = Local6
                                    Local2 += SLEN (VLST, Local6)
                                    Local4 = DerefOf (IBUF [Local2])
                                }

                                If ((Local2 < Local0) && (Local4 == 0x3A))
                                {
                                    Local2++
                                    Local6 = GSEL (VLST, IBUF, Local2)
                                    If (Local6 == Ones)
                                    {
                                        Return (0x02)
                                    }

                                    WLS5 = Local6
                                    Local2 += SLEN (VLST, Local6)
                                    Local4 = DerefOf (IBUF [Local2])
                                }

                                If ((Local2 < Local0) && (Local4 == 0x3A))
                                {
                                    Local2++
                                    Local6 = GSEL (VLST, IBUF, Local2)
                                    If (Local6 == Ones)
                                    {
                                        Return (0x02)
                                    }

                                    WLS6 = Local6
                                    Local2 += SLEN (VLST, Local6)
                                    Local4 = DerefOf (IBUF [Local2])
                                }

                                If ((Local2 < Local0) && (Local4 == 0x3A))
                                {
                                    Local2++
                                    Local6 = GSEL (VLST, IBUF, Local2)
                                    If (Local6 == Ones)
                                    {
                                        Return (0x02)
                                    }

                                    WLS7 = Local6
                                    Local2 += SLEN (VLST, Local6)
                                    Local4 = DerefOf (IBUF [Local2])
                                }

                                If ((Local2 < Local0) && (Local4 == 0x3A))
                                {
                                    Local2++
                                    Local6 = GSEL (VLST, IBUF, Local2)
                                    If (Local6 == Ones)
                                    {
                                        Return (0x02)
                                    }

                                    WLS8 = Local6
                                    Local2 += SLEN (VLST, Local6)
                                    Local4 = DerefOf (IBUF [Local2])
                                }

                                If ((Local2 < Local0) && (Local4 == 0x3A))
                                {
                                    Local2++
                                    Local6 = GSEL (VLST, IBUF, Local2)
                                    If (Local6 == Ones)
                                    {
                                        Return (0x02)
                                    }

                                    WLS9 = Local6
                                    Local2 += SLEN (VLST, Local6)
                                    Local4 = DerefOf (IBUF [Local2])
                                }

                                If ((Local2 < Local0) && (Local4 == 0x3A))
                                {
                                    Local2++
                                    Local6 = GSEL (VLST, IBUF, Local2)
                                    If (Local6 == Ones)
                                    {
                                        Return (0x02)
                                    }

                                    WLSA = Local6
                                    Local2 += SLEN (VLST, Local6)
                                    Local4 = DerefOf (IBUF [Local2])
                                }

                                If ((Local2 < Local0) && (Local4 == 0x3A))
                                {
                                    Local2++
                                    Local6 = GSEL (VLST, IBUF, Local2)
                                    If (Local6 == Ones)
                                    {
                                        Return (0x02)
                                    }

                                    WLSB = Local6
                                    Local2 += SLEN (VLST, Local6)
                                    Local4 = DerefOf (IBUF [Local2])
                                }

                                If ((Local2 < Local0) && (Local4 == 0x3A))
                                {
                                    Local2++
                                    Local6 = GSEL (VLST, IBUF, Local2)
                                    If (Local6 == Ones)
                                    {
                                        Return (0x02)
                                    }

                                    WLSC = Local6
                                    Local2 += SLEN (VLST, Local6)
                                    Local4 = DerefOf (IBUF [Local2])
                                }

                                If ((Local2 < Local0) && (Local4 == 0x3A))
                                {
                                    Local2++
                                    Local6 = GSEL (VLST, IBUF, Local2)
                                    If (Local6 == Ones)
                                    {
                                        Return (0x02)
                                    }

                                    WLSD = Local6
                                    Local2 += SLEN (VLST, Local6)
                                    Local4 = DerefOf (IBUF [Local2])
                                }
                            }

                            If ((Local4 == 0x2C) && (Local2 < Local0))
                            {
                                Local2++
                                Local0 = CPAS (IBUF, Local2)
                                If (Local0 != Zero)
                                {
                                    Return (Local0)
                                }
                            }

                            Return (Zero)
                        }

                        Name (WQBA, Buffer (0x089D)
                        {
                            /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  /* FOMB.... */
                            /* 0008 */  0x8D, 0x08, 0x00, 0x00, 0xF2, 0x36, 0x00, 0x00,  /* .....6.. */
                            /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  /* DS...}.T */
                            /* 0018 */  0xA8, 0xC9, 0x9A, 0x00, 0x01, 0x06, 0x18, 0x42,  /* .......B */
                            /* 0020 */  0x10, 0x13, 0x10, 0x0A, 0x0D, 0x21, 0x02, 0x0B,  /* .....!.. */
                            /* 0028 */  0x83, 0x50, 0x4C, 0x18, 0x14, 0xA0, 0x45, 0x41,  /* .PL...EA */
                            /* 0030 */  0xC8, 0x05, 0x14, 0x95, 0x02, 0x21, 0xC3, 0x02,  /* .....!.. */
                            /* 0038 */  0x14, 0x0B, 0x70, 0x2E, 0x40, 0xBA, 0x00, 0xE5,  /* ..p.@... */
                            /* 0040 */  0x28, 0x72, 0x0C, 0x22, 0x02, 0xF7, 0xEF, 0x0F,  /* (r.".... */
                            /* 0048 */  0x31, 0x0E, 0x88, 0x14, 0x40, 0x48, 0x26, 0x84,  /* 1...@H&. */
                            /* 0050 */  0x44, 0x00, 0x53, 0x21, 0x70, 0x84, 0xA0, 0x5F,  /* D.S!p.._ */
                            /* 0058 */  0x01, 0x08, 0x1D, 0xA2, 0xC9, 0xA0, 0x00, 0xA7,  /* ........ */
                            /* 0060 */  0x08, 0x82, 0xB4, 0x65, 0x01, 0xBA, 0x05, 0xF8,  /* ...e.... */
                            /* 0068 */  0x16, 0xA0, 0x1D, 0x42, 0x68, 0x15, 0x0A, 0x30,  /* ...Bh..0 */
                            /* 0070 */  0x29, 0xC0, 0x27, 0x98, 0x2C, 0x0A, 0x90, 0x0D,  /* ).'.,... */
                            /* 0078 */  0x26, 0xDB, 0x70, 0x64, 0x18, 0x4C, 0xE4, 0x18,  /* &.pd.L.. */
                            /* 0080 */  0x50, 0x62, 0xC6, 0x80, 0xD2, 0x39, 0x05, 0xD9,  /* Pb...9.. */
                            /* 0088 */  0x04, 0x16, 0x74, 0xA1, 0x28, 0x9A, 0x46, 0x94,  /* ..t.(.F. */
                            /* 0090 */  0x04, 0x07, 0x75, 0x0C, 0x11, 0x82, 0x97, 0x2B,  /* ..u....+ */
                            /* 0098 */  0x40, 0xF2, 0x04, 0xA4, 0x79, 0x5E, 0xB2, 0x3E,  /* @...y^.> */
                            /* 00A0 */  0x08, 0x0D, 0x81, 0x8D, 0x80, 0x47, 0x91, 0x00,  /* .....G.. */
                            /* 00A8 */  0xC2, 0x62, 0x2C, 0x53, 0xE2, 0x61, 0x50, 0x1E,  /* .b,S.aP. */
                            /* 00B0 */  0x40, 0x24, 0x67, 0xA8, 0x28, 0x60, 0x7B, 0x9D,  /* @$g.(`{. */
                            /* 00B8 */  0x88, 0x86, 0x75, 0x9C, 0x4C, 0x12, 0x1C, 0x6A,  /* ..u.L..j */
                            /* 00C0 */  0x94, 0x96, 0x28, 0xC0, 0xFC, 0xC8, 0x34, 0x91,  /* ..(...4. */
                            /* 00C8 */  0x63, 0x6B, 0x7A, 0xC4, 0x82, 0x64, 0xD2, 0x86,  /* ckz..d.. */
                            /* 00D0 */  0x82, 0x1A, 0xBA, 0xA7, 0x75, 0x52, 0x9E, 0x68,  /* ....uR.h */
                            /* 00D8 */  0xC4, 0x83, 0x32, 0x4C, 0x02, 0x8F, 0x82, 0xA1,  /* ..2L.... */
                            /* 00E0 */  0x71, 0x82, 0xB2, 0x20, 0xE4, 0x60, 0xA0, 0x28,  /* q.. .`.( */
                            /* 00E8 */  0xC0, 0x93, 0xF0, 0x1C, 0x8B, 0x17, 0x20, 0x7C,  /* ...... | */
                            /* 00F0 */  0xC6, 0xE4, 0x28, 0x10, 0x23, 0x81, 0x8F, 0x04,  /* ..(.#... */
                            /* 00F8 */  0x1E, 0xCD, 0x31, 0x63, 0x81, 0xC2, 0x05, 0x3C,  /* ..1c...< */
                            /* 0100 */  0x9F, 0x63, 0x88, 0x1C, 0xF7, 0x50, 0x63, 0x1C,  /* .c...Pc. */
                            /* 0108 */  0x45, 0xE4, 0x04, 0xEF, 0x00, 0x51, 0x8C, 0x56,  /* E....Q.V */
                            /* 0110 */  0xD0, 0xBC, 0x85, 0x18, 0x2C, 0x9A, 0xC1, 0x7A,  /* ....,..z */
                            /* 0118 */  0x06, 0x27, 0x83, 0x4E, 0xF0, 0xFF, 0x3F, 0x02,  /* .'.N..?. */
                            /* 0120 */  0x2E, 0x03, 0x42, 0x1E, 0x05, 0x58, 0x1D, 0x94,  /* ..B..X.. */
                            /* 0128 */  0xA6, 0x61, 0x82, 0xEE, 0x05, 0xBC, 0x1A, 0x1A,  /* .a...... */
                            /* 0130 */  0x13, 0xA0, 0x11, 0x43, 0xCA, 0x04, 0x38, 0xBB,  /* ...C..8. */
                            /* 0138 */  0x2F, 0x68, 0x46, 0x6D, 0x09, 0x30, 0x27, 0x40,  /* /hFm.0'@ */
                            /* 0140 */  0x9B, 0x00, 0x6F, 0x08, 0x42, 0x39, 0xCF, 0x28,  /* ..o.B9.( */
                            /* 0148 */  0xC7, 0x72, 0x8A, 0x51, 0x1E, 0x06, 0x62, 0xBE,  /* .r.Q..b. */
                            /* 0150 */  0x0C, 0x04, 0x8D, 0x12, 0x23, 0xE6, 0xB9, 0xC4,  /* ....#... */
                            /* 0158 */  0x35, 0x6C, 0x84, 0x18, 0x21, 0x4F, 0x21, 0x50,  /* 5l..!O!P */
                            /* 0160 */  0xDC, 0xF6, 0x07, 0x41, 0x06, 0x8D, 0x1B, 0xBD,  /* ...A.... */
                            /* 0168 */  0x4F, 0x0B, 0x67, 0x75, 0x02, 0x47, 0xFF, 0xA4,  /* O.gu.G.. */
                            /* 0170 */  0x60, 0x02, 0x4F, 0xF9, 0xC0, 0x9E, 0x0D, 0x4E,  /* `.O....N */
                            /* 0178 */  0xE0, 0x58, 0xA3, 0xC6, 0x38, 0x95, 0x04, 0x8E,  /* .X..8... */
                            /* 0180 */  0xFD, 0x80, 0x90, 0x06, 0x10, 0x45, 0x82, 0x47,  /* .....E.G */
                            /* 0188 */  0x9D, 0x16, 0x7C, 0x2E, 0xF0, 0xD0, 0x0E, 0xDA,  /* ..|..... */
                            /* 0190 */  0x73, 0x3C, 0x81, 0x20, 0x87, 0x70, 0x04, 0x4F,  /* s<. .p.O */
                            /* 0198 */  0x0C, 0x0F, 0x04, 0x1E, 0x03, 0xBB, 0x29, 0xF8,  /* ......). */
                            /* 01A0 */  0x08, 0xE0, 0x13, 0x02, 0xDE, 0x35, 0xA0, 0xAE,  /* .....5.. */
                            /* 01A8 */  0x06, 0x0F, 0x06, 0x6C, 0xD0, 0xE1, 0x30, 0xE3,  /* ...l..0. */
                            /* 01B0 */  0xF5, 0xF0, 0xC3, 0x9D, 0xC0, 0x49, 0x3E, 0x60,  /* .....I>` */
                            /* 01B8 */  0xF0, 0xC3, 0x86, 0x07, 0x87, 0x9B, 0xE7, 0xC9,  /* ........ */
                            /* 01C0 */  0x1C, 0x59, 0xA9, 0x02, 0xCC, 0x1E, 0x0E, 0x74,  /* .Y.....t */
                            /* 01C8 */  0x90, 0xF0, 0x69, 0x83, 0x9D, 0x01, 0x30, 0xF2,  /* ..i...0. */
                            /* 01D0 */  0x07, 0x81, 0x1A, 0x99, 0xA1, 0x3D, 0xEE, 0x97,  /* .....=.. */
                            /* 01D8 */  0x0E, 0x43, 0x3E, 0x27, 0x1C, 0x16, 0x13, 0x7B,  /* .C>'...{ */
                            /* 01E0 */  0xEA, 0xA0, 0xE3, 0x01, 0xFF, 0x65, 0xE4, 0x39,  /* .....e.9 */
                            /* 01E8 */  0xC3, 0xD3, 0xF7, 0x7C, 0x4D, 0x30, 0xEC, 0xC0,  /* ...|M0.. */
                            /* 01F0 */  0xD1, 0x03, 0x31, 0xF4, 0xC3, 0xC6, 0x61, 0x9C,  /* ..1...a. */
                            /* 01F8 */  0x86, 0xEF, 0x1F, 0x3E, 0x2F, 0xC0, 0x38, 0x05,  /* ...>/.8. */
                            /* 0200 */  0x78, 0xE4, 0xFE, 0xFF, 0x1F, 0x52, 0x7C, 0x9A,  /* x....R|. */
                            /* 0208 */  0xE0, 0x47, 0x0B, 0x9F, 0x26, 0xD8, 0xF5, 0xE0,  /* .G..&... */
                            /* 0210 */  0x34, 0x9E, 0x03, 0x3C, 0x9C, 0xB3, 0xF2, 0x61,  /* 4..<...a */
                            /* 0218 */  0x02, 0x6C, 0xF7, 0x13, 0x36, 0xA2, 0x77, 0x0B,  /* .l..6.w. */
                            /* 0220 */  0x8F, 0x06, 0x7B, 0x0A, 0x00, 0xDF, 0xF9, 0x05,  /* ..{..... */
                            /* 0228 */  0x9C, 0x77, 0x0D, 0x36, 0x58, 0x18, 0xE7, 0x17,  /* .w.6X... */
                            /* 0230 */  0xE0, 0x71, 0x42, 0xF0, 0x10, 0xF8, 0x41, 0xC2,  /* .qB...A. */
                            /* 0238 */  0x43, 0xE0, 0x03, 0x78, 0xFE, 0x38, 0x43, 0x2B,  /* C..x.8C+ */
                            /* 0240 */  0x9D, 0x17, 0x72, 0x60, 0xF0, 0xCE, 0x39, 0x30,  /* ..r`..90 */
                            /* 0248 */  0x46, 0xC1, 0xF3, 0x3C, 0x36, 0x4C, 0xA0, 0x20,  /* F..<6L.  */
                            /* 0250 */  0xAF, 0x01, 0x85, 0x7A, 0x16, 0x50, 0x18, 0x9F,  /* ...z.P.. */
                            /* 0258 */  0x6A, 0x80, 0xD7, 0xFF, 0xFF, 0x54, 0x03, 0x5C,  /* j....T.\ */
                            /* 0260 */  0x0E, 0x07, 0xB8, 0x93, 0x03, 0xDC, 0x7B, 0x01,  /* ......{. */
                            /* 0268 */  0xBB, 0x38, 0x3C, 0xD7, 0xC0, 0x15, 0x7D, 0xAE,  /* .8<...}. */
                            /* 0270 */  0x81, 0x7A, 0x6F, 0x29, 0x6E, 0x8C, 0xBA, 0xC6,  /* .zo)n... */
                            /* 0278 */  0x04, 0x79, 0x14, 0x78, 0xA4, 0x89, 0xF2, 0x3C,  /* .y.x...< */
                            /* 0280 */  0xF3, 0x2E, 0x13, 0xE1, 0xD9, 0xC6, 0xD7, 0x1A,  /* ........ */
                            /* 0288 */  0x4F, 0x21, 0x8E, 0xAF, 0x35, 0x46, 0x7C, 0x99,  /* O!..5F|. */
                            /* 0290 */  0x78, 0xB7, 0x31, 0xEE, 0xC1, 0x3D, 0xD6, 0x3C,  /* x.1..=.< */
                            /* 0298 */  0xE4, 0x18, 0xE4, 0x68, 0x22, 0xBC, 0x18, 0x04,  /* ...h"... */
                            /* 02A0 */  0x7C, 0xBC, 0xF1, 0xB1, 0x06, 0xBC, 0x62, 0x5E,  /* |.....b^ */
                            /* 02A8 */  0x28, 0xB2, 0x70, 0xAC, 0x01, 0x34, 0xFE, 0xFF,  /* (.p..4.. */
                            /* 02B0 */  0x8F, 0x35, 0xC0, 0x0D, 0xEB, 0x01, 0x05, 0x7C,  /* .5.....| */
                            /* 02B8 */  0x47, 0x06, 0x76, 0x43, 0x81, 0x77, 0x42, 0x01,  /* G.vC.wB. */
                            /* 02C0 */  0xFC, 0x24, 0x7E, 0x01, 0xE8, 0xC8, 0xE1, 0xB4,  /* .$~..... */
                            /* 02C8 */  0x20, 0xB2, 0xF1, 0x06, 0xF0, 0x29, 0x80, 0xAA,  /*  ....).. */
                            /* 02D0 */  0x01, 0xD2, 0x34, 0x61, 0x13, 0x4C, 0x4F, 0x2E,  /* ..4a.LO. */
                            /* 02D8 */  0x78, 0x1F, 0x09, 0x9C, 0x9B, 0x44, 0xC9, 0x87,  /* x....D.. */
                            /* 02E0 */  0x45, 0xE1, 0x9C, 0xF5, 0x20, 0x42, 0x41, 0x0C,  /* E... BA. */
                            /* 02E8 */  0xE8, 0x20, 0xC7, 0x09, 0xF4, 0x19, 0xC5, 0x07,  /* . ...... */
                            /* 02F0 */  0x91, 0x13, 0x7D, 0x22, 0xF4, 0xA0, 0x3C, 0x8C,  /* ..}"..<. */
                            /* 02F8 */  0x77, 0x14, 0x76, 0x02, 0xF1, 0x61, 0xC2, 0x63,  /* w.v..a.c */
                            /* 0300 */  0xF7, 0x31, 0x81, 0xFF, 0x63, 0x3C, 0x1B, 0xA3,  /* .1..c<.. */
                            /* 0308 */  0x5B, 0x0D, 0x86, 0xFE, 0xFF, 0xE7, 0x14, 0x0E,  /* [....... */
                            /* 0310 */  0xE6, 0x83, 0x08, 0x27, 0xA8, 0xEB, 0x26, 0x01,  /* ...'..&. */
                            /* 0318 */  0x32, 0x7D, 0x47, 0x05, 0x50, 0x00, 0xF9, 0x5E,  /* 2}G.P..^ */
                            /* 0320 */  0xE0, 0x73, 0xC0, 0xB3, 0x01, 0x1B, 0xC3, 0xA3,  /* .s...... */
                            /* 0328 */  0x80, 0xD1, 0x8C, 0xCE, 0xC3, 0x4F, 0x16, 0x15,  /* .....O.. */
                            /* 0330 */  0x77, 0xB2, 0x14, 0xC4, 0x93, 0x75, 0x94, 0xC9,  /* w....u.. */
                            /* 0338 */  0xA2, 0x67, 0xE2, 0x7B, 0x85, 0x67, 0xF4, 0xA6,  /* .g.{.g.. */
                            /* 0340 */  0xE5, 0x39, 0x7A, 0xC2, 0xBE, 0x87, 0xC0, 0x3A,  /* .9z....: */
                            /* 0348 */  0x0C, 0x84, 0x7C, 0x30, 0xF0, 0x34, 0x0C, 0xE7,  /* ..|0.4.. */
                            /* 0350 */  0xC9, 0x72, 0x38, 0x4F, 0x96, 0x8F, 0xC5, 0xD7,  /* .r8O.... */
                            /* 0358 */  0x10, 0xF0, 0x09, 0x9C, 0x2D, 0xC8, 0xE1, 0x31,  /* ....-..1 */
                            /* 0360 */  0xB1, 0x46, 0x45, 0xAF, 0x42, 0x1E, 0x1E, 0xBF,  /* .FE.B... */
                            /* 0368 */  0x1C, 0x78, 0x3E, 0xCF, 0x08, 0x47, 0xF9, 0x24,  /* .x>..G.$ */
                            /* 0370 */  0x81, 0xC3, 0x78, 0x26, 0xF1, 0x10, 0x7D, 0x2B,  /* ..x&..}+ */
                            /* 0378 */  0x82, 0x35, 0x91, 0x93, 0xF6, 0x6D, 0xE1, 0x64,  /* .5...m.d */
                            /* 0380 */  0x83, 0xBE, 0x9E, 0x61, 0x6E, 0x45, 0xB0, 0xFF,  /* ...anE.. */
                            /* 0388 */  0xFF, 0xB7, 0x22, 0x38, 0x17, 0x34, 0x98, 0x99,  /* .."8.4.. */
                            /* 0390 */  0xEE, 0x55, 0xA8, 0x58, 0xF7, 0x2A, 0x40, 0xEC,  /* .U.X.*@. */
                            /* 0398 */  0xB0, 0x5E, 0x7B, 0x7C, 0xB0, 0x82, 0x7B, 0xAF,  /* .^{|..{. */
                            /* 03A0 */  0x82, 0x7B, 0xA9, 0x7A, 0x56, 0x38, 0xC6, 0xF0,  /* .{.zV8.. */
                            /* 03A8 */  0x0F, 0x53, 0x31, 0x4E, 0xE9, 0xB5, 0xD3, 0x40,  /* .S1N...@ */
                            /* 03B0 */  0x61, 0xA2, 0xC4, 0x7B, 0xAF, 0xF2, 0x18, 0xDF,  /* a..{.... */
                            /* 03B8 */  0xAB, 0xD8, 0x15, 0x2A, 0x4C, 0xAC, 0x97, 0x2B,  /* ...*L..+ */
                            /* 03C0 */  0xA3, 0xBE, 0x4E, 0x84, 0x0B, 0x14, 0x24, 0xD2,  /* ..N...$. */
                            /* 03C8 */  0xAB, 0x55, 0x94, 0xC8, 0xF1, 0x0D, 0xF9, 0x5E,  /* .U.....^ */
                            /* 03D0 */  0x05, 0x5E, 0x39, 0xF7, 0x2A, 0x90, 0xFD, 0xFF,  /* .^9.*... */
                            /* 03D8 */  0xEF, 0x55, 0x80, 0x79, 0xB4, 0xF7, 0x2A, 0x30,  /* .U.y..*0 */
                            /* 03E0 */  0x5E, 0x1B, 0xD8, 0x0D, 0x09, 0x16, 0xD0, 0x8B,  /* ^....... */
                            /* 03E8 */  0x15, 0x60, 0x28, 0xF3, 0xC5, 0x8A, 0xE6, 0xBD,  /* .`(..... */
                            /* 03F0 */  0x58, 0x21, 0xFE, 0xFF, 0xE7, 0x12, 0xA6, 0xE7,  /* X!...... */
                            /* 03F8 */  0x62, 0x45, 0xE6, 0x09, 0xFF, 0x66, 0x05, 0x70,  /* bE...f.p */
                            /* 0400 */  0xFA, 0xFF, 0x7F, 0xB3, 0x02, 0x8C, 0xDD, 0x8B,  /* ........ */
                            /* 0408 */  0x30, 0x47, 0x2B, 0x78, 0x29, 0x6F, 0x56, 0x34,  /* 0G+x)oV4 */
                            /* 0410 */  0xCE, 0x32, 0x14, 0x70, 0x41, 0x14, 0xC6, 0x37,  /* .2.pA..7 */
                            /* 0418 */  0x2B, 0xC0, 0xD1, 0x75, 0x05, 0x37, 0x64, 0xB8,  /* +..u.7d. */
                            /* 0420 */  0x60, 0x51, 0x82, 0xF9, 0x10, 0xE2, 0xE9, 0x1C,  /* `Q...... */
                            /* 0428 */  0xF1, 0x43, 0xC2, 0x4B, 0xC0, 0x63, 0x8E, 0x07,  /* .C.K.c.. */
                            /* 0430 */  0xFC, 0x40, 0xE0, 0xCB, 0x15, 0x98, 0xFE, 0xFF,  /* .@...... */
                            /* 0438 */  0x04, 0x3E, 0xF9, 0x9E, 0xE5, 0xDB, 0xD4, 0x7B,  /* .>.....{ */
                            /* 0440 */  0x2F, 0x3F, 0x60, 0xBD, 0x57, 0xF9, 0xF0, 0x1B,  /* /?`.W... */
                            /* 0448 */  0xEB, 0x9D, 0xE1, 0xE5, 0xCA, 0x23, 0x89, 0x72,  /* .....#.r */
                            /* 0450 */  0x12, 0xA1, 0x7C, 0xB7, 0x7A, 0xAF, 0x32, 0x4A,  /* ..|.z.2J */
                            /* 0458 */  0xC4, 0x17, 0x62, 0x9F, 0x82, 0x0D, 0x6D, 0x94,  /* ..b...m. */
                            /* 0460 */  0xA7, 0x8A, 0xE8, 0xC6, 0x7B, 0xB9, 0x02, 0xAF,  /* ....{... */
                            /* 0468 */  0xA4, 0xCB, 0x15, 0x40, 0x93, 0xE1, 0xBF, 0x5C,  /* ...@...\ */
                            /* 0470 */  0x81, 0xEF, 0xE6, 0x80, 0xBD, 0x26, 0xC1, 0xF9,  /* .....&.. */
                            /* 0478 */  0xFF, 0x5F, 0x93, 0xF8, 0xF5, 0x0A, 0xF0, 0x93,  /* ._...... */
                            /* 0480 */  0xFD, 0x7A, 0x45, 0x73, 0x5F, 0xAF, 0x50, 0xA2,  /* .zEs_.P. */
                            /* 0488 */  0x20, 0xA4, 0x08, 0x48, 0x33, 0x05, 0xCF, 0xFD,  /*  ..H3... */
                            /* 0490 */  0x0A, 0xE0, 0xC4, 0xFF, 0xFF, 0x7E, 0x05, 0x58,  /* .....~.X */
                            /* 0498 */  0x0E, 0x77, 0xBF, 0x02, 0x7A, 0xB7, 0x23, 0xF0,  /* .w..z.#. */
                            /* 04A0 */  0xA2, 0xBC, 0x1D, 0x61, 0xAF, 0x58, 0xF8, 0x8C,  /* ...a.X.. */
                            /* 04A8 */  0x57, 0x2C, 0x1A, 0x66, 0x25, 0x8A, 0xB7, 0x26,  /* W,.f%..& */
                            /* 04B0 */  0x0A, 0xE3, 0x2B, 0x16, 0x30, 0xF9, 0xFF, 0x5F,  /* ..+.0.._ */
                            /* 04B8 */  0xB1, 0x80, 0xD9, 0x41, 0x14, 0x37, 0x6A, 0xB8,  /* ...A.7j. */
                            /* 04C0 */  0x17, 0x27, 0xDF, 0x7A, 0x3C, 0xDF, 0x88, 0xBE,  /* .'.z<... */
                            /* 04C8 */  0xC3, 0x60, 0x4E, 0x58, 0x30, 0x6E, 0x58, 0xF0,  /* .`NX0nX. */
                            /* 04D0 */  0x87, 0xF4, 0x30, 0xEC, 0x93, 0xC4, 0x3B, 0x96,  /* ..0...;. */
                            /* 04D8 */  0x8F, 0x56, 0x06, 0x79, 0x03, 0x7E, 0xB2, 0x7A,  /* .V.y.~.z */
                            /* 04E0 */  0xB0, 0x8A, 0x62, 0x84, 0x80, 0xC7, 0xF3, 0x2E,  /* ..b..... */
                            /* 04E8 */  0xEC, 0xA3, 0xD5, 0x9B, 0x96, 0x51, 0x62, 0xC7,  /* .....Qb. */
                            /* 04F0 */  0xF2, 0x85, 0xEA, 0x59, 0xCB, 0xD7, 0x2C, 0x43,  /* ...Y..,C */
                            /* 04F8 */  0xC4, 0x7D, 0x20, 0xF6, 0x0D, 0x0B, 0xB0, 0xFD,  /* .} ..... */
                            /* 0500 */  0xFF, 0xBF, 0x61, 0x01, 0x8E, 0x2E, 0x0E, 0xFC,  /* ..a..... */
                            /* 0508 */  0xE0, 0x80, 0xBD, 0x61, 0x01, 0x3E, 0x67, 0x0A,  /* ...a.>g. */
                            /* 0510 */  0x9E, 0x1B, 0x16, 0xB0, 0xF9, 0xFF, 0xDF, 0xB0,  /* ........ */
                            /* 0518 */  0x00, 0xFE, 0xFF, 0xFF, 0x6F, 0x58, 0xC0, 0xE1,  /* ....oX.. */
                            /* 0520 */  0x76, 0x85, 0xBD, 0x65, 0x61, 0x6F, 0x2F, 0x64,  /* v..eao/d */
                            /* 0528 */  0x15, 0x34, 0xD4, 0x4A, 0x14, 0xFC, 0x7B, 0x65,  /* .4.J..{e */
                            /* 0530 */  0x18, 0x7A, 0xC3, 0x02, 0x1C, 0x8D, 0xDB, 0xA3,  /* .z...... */
                            /* 0538 */  0x06, 0xC7, 0xD9, 0xE0, 0x49, 0x02, 0x73, 0xAE,  /* ....I.s. */
                            /* 0540 */  0xC6, 0xCD, 0xE6, 0xE0, 0x02, 0x47, 0xE8, 0x1D,  /* .....G.. */
                            /* 0548 */  0x54, 0x73, 0x67, 0x97, 0x14, 0x18, 0xB7, 0x2C,  /* Tsg...., */
                            /* 0550 */  0xB8, 0x97, 0xAA, 0x87, 0x86, 0x28, 0x07, 0xF1,  /* .....(.. */
                            /* 0558 */  0x2A, 0xFC, 0x60, 0xF5, 0x28, 0x75, 0x64, 0x8F,  /* *.`.(ud. */
                            /* 0560 */  0x57, 0x4F, 0xC3, 0x3E, 0x66, 0xF9, 0x96, 0x65,  /* WO.>f..e */
                            /* 0568 */  0xA8, 0x08, 0x6F, 0x59, 0xEC, 0x0C, 0x11, 0x2F,  /* ..oY.../ */
                            /* 0570 */  0x56, 0x94, 0x10, 0xEF, 0x15, 0xA1, 0x7D, 0xE7,  /* V.....}. */
                            /* 0578 */  0x32, 0xF8, 0xA3, 0xB1, 0x51, 0x83, 0xBE, 0x1C,  /* 2...Q... */
                            /* 0580 */  0xBF, 0x65, 0xC1, 0xFB, 0xFF, 0xDF, 0xB2, 0xE0,  /* .e...... */
                            /* 0588 */  0x8B, 0xFC, 0xAB, 0xE8, 0x44, 0xE0, 0x5B, 0x16,  /* ....D.[. */
                            /* 0590 */  0xC0, 0x8F, 0x60, 0x10, 0x72, 0x32, 0x70, 0xF4,  /* ..`.r2p. */
                            /* 0598 */  0x79, 0x01, 0x3F, 0x80, 0x87, 0x11, 0x0F, 0x89,  /* y.?..... */
                            /* 05A0 */  0x05, 0x18, 0x38, 0xBD, 0x2F, 0xF9, 0x4C, 0xC1,  /* ..8./.L. */
                            /* 05A8 */  0x0F, 0x18, 0x3E, 0x53, 0xB0, 0xEB, 0x41, 0xF4,  /* ..>S..A. */
                            /* 05B0 */  0xC7, 0x00, 0x9F, 0x4B, 0x30, 0x83, 0x03, 0xFF,  /* ...K0... */
                            /* 05B8 */  0xB5, 0xE2, 0xD0, 0x3D, 0x8A, 0xD7, 0x07, 0x13,  /* ...=.... */
                            /* 05C0 */  0x78, 0x70, 0xFC, 0xFF, 0x3F, 0x38, 0xB8, 0x77,  /* xp..?8.w */
                            /* 05C8 */  0x86, 0x23, 0xF2, 0x1D, 0xC6, 0x83, 0x03, 0xDB,  /* .#...... */
                            /* 05D0 */  0x41, 0x00, 0x38, 0x0C, 0x0E, 0x1F, 0x6A, 0x70,  /* A.8...jp */
                            /* 05D8 */  0xE8, 0xF1, 0x18, 0x38, 0xA4, 0xCF, 0x63, 0xEC,  /* ...8..c. */
                            /* 05E0 */  0xC2, 0xF0, 0x90, 0xE3, 0xA1, 0x81, 0x0D, 0xD0,  /* ........ */
                            /* 05E8 */  0x43, 0x03, 0x96, 0x93, 0x78, 0x0A, 0x39, 0x34,  /* C...x.94 */
                            /* 05F0 */  0x30, 0x4B, 0x18, 0x1A, 0x50, 0x8A, 0x37, 0x34,  /* 0K..P.74 */
                            /* 05F8 */  0xFA, 0xFF, 0x1F, 0x1A, 0x1F, 0x92, 0x0F, 0x0B,  /* ........ */
                            /* 0600 */  0x31, 0x9F, 0x72, 0x22, 0xBC, 0x2F, 0xF8, 0x04,  /* 1.r"./.. */
                            /* 0608 */  0xC5, 0xD0, 0x5F, 0x53, 0x7C, 0xBB, 0xF0, 0x4D,  /* .._S|..M */
                            /* 0610 */  0x10, 0x37, 0x3E, 0x70, 0x5D, 0x3A, 0x3D, 0x3E,  /* .7>p]:=> */
                            /* 0618 */  0xE0, 0x73, 0xE4, 0xF2, 0xF8, 0x70, 0x47, 0x27,  /* .s...pG' */
                            /* 0620 */  0x8F, 0x0F, 0x86, 0xCB, 0xAB, 0x0C, 0x39, 0x9A,  /* ......9. */
                            /* 0628 */  0xF8, 0x68, 0xC5, 0x86, 0x07, 0xB6, 0x9B, 0x9E,  /* .h...... */
                            /* 0630 */  0x87, 0x07, 0x7C, 0xAE, 0x9B, 0x60, 0xBC, 0x42,  /* ..|..`.B */
                            /* 0638 */  0xF2, 0x6B, 0x09, 0x8C, 0x13, 0x14, 0xFE, 0xBA,  /* .k...... */
                            /* 0640 */  0x09, 0xDE, 0xFF, 0xFF, 0x75, 0x13, 0x78, 0x8E,  /* ....u.x. */
                            /* 0648 */  0x82, 0x6B, 0xBD, 0x64, 0xD3, 0x20, 0xAF, 0x1C,  /* .k.d. .. */
                            /* 0650 */  0xC5, 0x7A, 0x11, 0x50, 0x18, 0x9F, 0xD9, 0x00,  /* .z.P.... */
                            /* 0658 */  0x47, 0x63, 0x7D, 0x66, 0x03, 0xCB, 0xBD, 0x80,  /* Gc}f.... */
                            /* 0660 */  0xDD, 0xD8, 0xE0, 0x9E, 0xD6, 0x60, 0xDF, 0x1D,  /* .....`.. */
                            /* 0668 */  0x1E, 0xCE, 0x1E, 0xD3, 0x1E, 0xD5, 0x1E, 0xD0,  /* ........ */
                            /* 0670 */  0x7C, 0xC4, 0x8E, 0xF1, 0x96, 0x16, 0x24, 0x4E,  /* |.....$N */
                            /* 0678 */  0x84, 0xD7, 0x81, 0xA7, 0x35, 0x5F, 0x32, 0xE2,  /* ....5_2. */
                            /* 0680 */  0x05, 0x7A, 0x5A, 0x33, 0x46, 0x9C, 0x97, 0x36,  /* .zZ3F..6 */
                            /* 0688 */  0x23, 0xBE, 0x52, 0x84, 0x78, 0x58, 0xF3, 0xC9,  /* #.R.xX.. */
                            /* 0690 */  0xCD, 0x78, 0x0F, 0x13, 0xE1, 0xC2, 0xBC, 0xB0,  /* .x...... */
                            /* 0698 */  0x3D, 0xAD, 0x81, 0xE3, 0xFF, 0x7F, 0x5A, 0x83,  /* =.....Z. */
                            /* 06A0 */  0x23, 0xE7, 0x8A, 0x0D, 0xD0, 0xE4, 0xA2, 0x8F,  /* #....... */
                            /* 06A8 */  0x3B, 0xA4, 0x80, 0xE5, 0xDA, 0xC0, 0x6E, 0x29,  /* ;.....n) */
                            /* 06B0 */  0xF0, 0x2E, 0xD8, 0xC0, 0xF9, 0xFF, 0x7F, 0x44,  /* .......D */
                            /* 06B8 */  0x01, 0x5F, 0x96, 0x0B, 0x36, 0xCD, 0x71, 0xC1,  /* ._..6.q. */
                            /* 06C0 */  0x46, 0x71, 0x58, 0x0D, 0x90, 0xE6, 0x09, 0xFF,  /* FqX..... */
                            /* 06C8 */  0x7A, 0x0D, 0xFE, 0x49, 0xF8, 0x7A, 0x0D, 0xD8,  /* z..I.z.. */
                            /* 06D0 */  0xBE, 0xC5, 0xE2, 0xAE, 0xD7, 0xC0, 0xEA, 0xFF,  /* ........ */
                            /* 06D8 */  0x7F, 0xBD, 0x06, 0x96, 0x82, 0x47, 0x4A, 0xEF,  /* .....GJ. */
                            /* 06E0 */  0xD4, 0xE0, 0xBA, 0x69, 0xE3, 0x41, 0xDF, 0xB4,  /* ...i.A.. */
                            /* 06E8 */  0x61, 0x0A, 0xBE, 0x45, 0xD1, 0x28, 0xE4, 0x8A,  /* a..E.(.. */
                            /* 06F0 */  0xB6, 0x10, 0x0A, 0xE3, 0x5B, 0x14, 0xE0, 0x08,  /* ....[... */
                            /* 06F8 */  0xFB, 0x2D, 0x0A, 0x2C, 0x17, 0xA7, 0xB7, 0x28,  /* .-.,...( */
                            /* 0700 */  0xFC, 0x0C, 0x3C, 0x68, 0xDF, 0x75, 0x18, 0xA6,  /* ..<h.u.. */
                            /* 0708 */  0xEF, 0xD0, 0xF0, 0x4F, 0x4D, 0xCF, 0x4D, 0x0F,  /* ...OM.M. */
                            /* 0710 */  0x4E, 0x0F, 0xCD, 0x3E, 0x48, 0xF9, 0x70, 0xF0,  /* N..>H.p. */
                            /* 0718 */  0xFC, 0xF4, 0xFF, 0x8F, 0xF1, 0x5E, 0xE7, 0x9B,  /* .....^.. */
                            /* 0720 */  0xD4, 0x6B, 0x94, 0x2F, 0x30, 0xC7, 0x10, 0x31,  /* .k./0..1 */
                            /* 0728 */  0xCA, 0xCB, 0xB4, 0x21, 0xE2, 0xF9, 0xD4, 0xE4,  /* ...!.... */
                            /* 0730 */  0xB3, 0x42, 0xDC, 0x10, 0x0F, 0xD1, 0x46, 0x88,  /* .B....F. */
                            /* 0738 */  0xFA, 0x3C, 0xED, 0x09, 0xBD, 0x46, 0x81, 0x57,  /* .<...F.W */
                            /* 0740 */  0xD0, 0x35, 0x0A, 0xA0, 0xC9, 0xFD, 0x08, 0x77,  /* .5.....w */
                            /* 0748 */  0x8D, 0x02, 0xCB, 0xBD, 0x81, 0x9D, 0x87, 0xF8,  /* ........ */
                            /* 0750 */  0x95, 0xC8, 0xD7, 0x06, 0x18, 0xF7, 0x28, 0x38,  /* ......(8 */
                            /* 0758 */  0xFF, 0xFF, 0x7B, 0x14, 0x60, 0x23, 0xCC, 0x3D,  /* ..{.`#.= */
                            /* 0760 */  0x8A, 0x06, 0xB9, 0x47, 0xA1, 0x4E, 0x26, 0xBE,  /* ...G.N&. */
                            /* 0768 */  0xD4, 0x79, 0xA2, 0xE0, 0x08, 0x7F, 0x91, 0x42,  /* .y.....B */
                            /* 0770 */  0xC5, 0x26, 0x51, 0xE8, 0xC3, 0x10, 0x2A, 0xE6,  /* .&Q...*. */
                            /* 0778 */  0x61, 0x84, 0x82, 0x18, 0xD0, 0x19, 0x4E, 0x14,  /* a.....N. */
                            /* 0780 */  0x68, 0x15, 0x27, 0x0A, 0x72, 0x8B, 0xF1, 0xA4,  /* h.'.r... */
                            /* 0788 */  0x1E, 0xA3, 0x00, 0x5F, 0xCB, 0xF4, 0x50, 0x79,  /* ..._..Py */
                            /* 0790 */  0xE4, 0xA1, 0x52, 0x10, 0x0F, 0xD5, 0x71, 0x86,  /* ..R...q. */
                            /* 0798 */  0x8A, 0x9E, 0xA4, 0xE7, 0x8F, 0xF9, 0xFF, 0x1F,  /* ........ */
                            /* 07A0 */  0x1C, 0xB0, 0x07, 0x29, 0x80, 0x17, 0x0A, 0x6D,  /* ...)...m */
                            /* 07A8 */  0xFA, 0xD4, 0x68, 0xD4, 0xAA, 0x41, 0x99, 0x1A,  /* ..h..A.. */
                            /* 07B0 */  0x65, 0x1A, 0xD4, 0xEA, 0x53, 0xA9, 0x31, 0x63,  /* e...S.1c */
                            /* 07B8 */  0xE7, 0x50, 0x4B, 0x3B, 0x4B, 0x50, 0x31, 0x8B,  /* .PK;KP1. */
                            /* 07C0 */  0xD1, 0x68, 0x1C, 0x05, 0x84, 0xCA, 0xFE, 0x9B,  /* .h...... */
                            /* 07C8 */  0x0B, 0xC4, 0x21, 0x9F, 0x3A, 0x02, 0x74, 0xB0,  /* ..!.:.t. */
                            /* 07D0 */  0x17, 0x95, 0x80, 0x2C, 0x6B, 0x6D, 0x02, 0x71,  /* ...,km.q */
                            /* 07D8 */  0x7C, 0x13, 0x10, 0x8D, 0x80, 0x48, 0xCB, 0x63,  /* |....H.c */
                            /* 07E0 */  0x42, 0x40, 0xCE, 0x0D, 0x22, 0x20, 0xAB, 0x58,  /* B@.." .X */
                            /* 07E8 */  0x93, 0x80, 0xAC, 0xF9, 0x01, 0x23, 0x70, 0xEB,  /* .....#p. */
                            /* 07F0 */  0xD4, 0x01, 0xC4, 0x52, 0x82, 0xD0, 0x44, 0x0B,  /* ...R..D. */
                            /* 07F8 */  0x17, 0xA8, 0xE3, 0x81, 0x68, 0x30, 0x84, 0x46,  /* ....h0.F */
                            /* 0800 */  0x40, 0x0E, 0x46, 0x21, 0x20, 0xCB, 0xF8, 0x74,  /* @.F! ..t */
                            /* 0808 */  0x0B, 0xDC, 0x02, 0xAC, 0x00, 0x31, 0xF9, 0x20,  /* .....1.  */
                            /* 0810 */  0x54, 0xB0, 0x17, 0x50, 0xA6, 0x1E, 0x44, 0x40,  /* T..P..D@ */
                            /* 0818 */  0x56, 0xBA, 0x56, 0x01, 0x59, 0x37, 0x88, 0x80,  /* V.V.Y7.. */
                            /* 0820 */  0xFE, 0xFF, 0x2F, 0x83, 0x32, 0x03, 0xCE, 0x32,  /* ../.2..2 */
                            /* 0828 */  0xBA, 0x01, 0x62, 0x0A, 0x1F, 0x0A, 0x02, 0xB1,  /* ..b..... */
                            /* 0830 */  0x26, 0x3D, 0xA0, 0x4C, 0x20, 0x88, 0xAE, 0x1C,  /* &=.L ... */
                            /* 0838 */  0xC4, 0x0F, 0x10, 0x93, 0x06, 0x22, 0x20, 0xC7,  /* ....." . */
                            /* 0840 */  0x39, 0x98, 0x08, 0xDC, 0x71, 0x14, 0x01, 0x52,  /* 9...q..R */
                            /* 0848 */  0x47, 0xC3, 0xA5, 0x20, 0x54, 0xFC, 0xF3, 0x44,  /* G.. T..D */
                            /* 0850 */  0x20, 0x16, 0x64, 0x09, 0x8C, 0x82, 0xD0, 0x08,  /*  .d..... */
                            /* 0858 */  0x9A, 0x40, 0x98, 0x3C, 0x4F, 0x20, 0x2C, 0xD4,  /* .@.<O ,. */
                            /* 0860 */  0x9F, 0x5C, 0xA7, 0x15, 0xA2, 0x6A, 0x88, 0xD4,  /* .\...j.. */
                            /* 0868 */  0x15, 0x08, 0x0B, 0xFC, 0x30, 0xD0, 0x60, 0x9C,  /* ....0.`. */
                            /* 0870 */  0x1E, 0x44, 0x40, 0x4E, 0xFA, 0xA7, 0x0A, 0x44,  /* .D@N...D */
                            /* 0878 */  0x72, 0x83, 0x08, 0xC8, 0xF9, 0x9F, 0x22, 0x02,  /* r.....". */
                            /* 0880 */  0x77, 0xEA, 0xD7, 0x84, 0x86, 0x4F, 0xBE, 0x58,  /* w....O.X */
                            /* 0888 */  0x41, 0x88, 0xB8, 0x87, 0x55, 0x50, 0xA2, 0x14,  /* A...UP.. */
                            /* 0890 */  0x44, 0x40, 0x56, 0xF6, 0xB4, 0x12, 0x90, 0x75,  /* D@V....u */
                            /* 0898 */  0x82, 0x08, 0xC8, 0xFF, 0x7F                     /* ..... */
                        })
                    }

                    Device (WMI2)
                    {
                        Name (_HID, EisaId ("PNP0C14") /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
                        Name (_UID, 0x02)  // _UID: Unique ID
                        Name (_WDG, Buffer (0x64)
                        {
                            /* 0000 */  0xF1, 0x24, 0xB4, 0xFC, 0x5A, 0x07, 0x0E, 0x4E,  /* .$..Z..N */
                            /* 0008 */  0xBF, 0xC4, 0x62, 0xF3, 0xE7, 0x17, 0x71, 0xFA,  /* ..b...q. */
                            /* 0010 */  0x41, 0x37, 0x01, 0x01, 0xE3, 0x5E, 0xBE, 0xE2,  /* A7...^.. */
                            /* 0018 */  0xDA, 0x42, 0xDB, 0x49, 0x83, 0x78, 0x1F, 0x52,  /* .B.I.x.R */
                            /* 0020 */  0x47, 0x38, 0x82, 0x02, 0x41, 0x38, 0x01, 0x02,  /* G8..A8.. */
                            /* 0028 */  0x9A, 0x01, 0x30, 0x74, 0xE9, 0xDC, 0x48, 0x45,  /* ..0t..HE */
                            /* 0030 */  0xBA, 0xB0, 0x9F, 0xDE, 0x09, 0x35, 0xCA, 0xFF,  /* .....5.. */
                            /* 0038 */  0x41, 0x39, 0x0A, 0x05, 0x03, 0x70, 0xF4, 0x7F,  /* A9...p.. */
                            /* 0040 */  0x6C, 0x3B, 0x5E, 0x4E, 0xA2, 0x27, 0xE9, 0x79,  /* l;^N.'.y */
                            /* 0048 */  0x82, 0x4A, 0x85, 0xD1, 0x41, 0x41, 0x01, 0x06,  /* .J..AA.. */
                            /* 0050 */  0x21, 0x12, 0x90, 0x05, 0x66, 0xD5, 0xD1, 0x11,  /* !...f... */
                            /* 0058 */  0xB2, 0xF0, 0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10,  /* ......). */
                            /* 0060 */  0x42, 0x42, 0x01, 0x00                           /* BB.. */
                        })
                        Name (PREL, Buffer (0x08)
                        {
                             0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                        })
                        Method (WQA7, 1, NotSerialized)
                        {
                            Acquire (^^WMI1.MWMI, 0xFFFF)
                            WMIS (0x07, Zero)
                            PREL [Zero] = WLS0 /* \WLS0 */
                            PREL [One] = WLS1 /* \WLS1 */
                            PREL [0x02] = WLS2 /* \WLS2 */
                            PREL [0x03] = WLS3 /* \WLS3 */
                            PREL [0x04] = WLS4 /* \WLS4 */
                            PREL [0x05] = WLS5 /* \WLS5 */
                            PREL [0x06] = WLS6 /* \WLS6 */
                            PREL [0x07] = WLS7 /* \WLS7 */
                            Release (^^WMI1.MWMI)
                            Return (PREL) /* \_SB_.WMI2.PREL */
                        }

                        Method (WMA8, 3, NotSerialized)
                        {
                            CreateByteField (Arg2, Zero, PRE0)
                            CreateByteField (Arg2, One, PRE1)
                            CreateByteField (Arg2, 0x02, PRE2)
                            CreateByteField (Arg2, 0x03, PRE3)
                            CreateByteField (Arg2, 0x04, PRE4)
                            CreateByteField (Arg2, 0x05, PRE5)
                            CreateByteField (Arg2, 0x06, PRE6)
                            CreateByteField (Arg2, 0x07, PRE7)
                            Acquire (^^WMI1.MWMI, 0xFFFF)
                            WLS0 = PRE0 /* \_SB_.WMI2.WMA8.PRE0 */
                            WLS1 = PRE1 /* \_SB_.WMI2.WMA8.PRE1 */
                            WLS2 = PRE2 /* \_SB_.WMI2.WMA8.PRE2 */
                            WLS3 = PRE3 /* \_SB_.WMI2.WMA8.PRE3 */
                            WLS4 = PRE4 /* \_SB_.WMI2.WMA8.PRE4 */
                            WLS5 = PRE5 /* \_SB_.WMI2.WMA8.PRE5 */
                            WLS6 = PRE6 /* \_SB_.WMI2.WMA8.PRE6 */
                            WLS7 = PRE7 /* \_SB_.WMI2.WMA8.PRE7 */
                            WMIS (0x08, Zero)
                            Release (^^WMI1.MWMI)
                        }

                        Name (ITEM, Package (0x05)
                        {
                            Package (0x02)
                            {
                                Zero, 
                                "InhibitEnteringThinkPadSetup"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "MTMSerialConcatenation"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "SwapProductName"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "ComputraceMsgDisable"
                            }, 

                            Package (0x02)
                            {
                                Zero, 
                                "AtpMsgDisable"
                            }
                        })
                        Name (VSEL, Package (0x02)
                        {
                            Package (0x02)
                            {
                                "Disable", 
                                "Enable"
                            }, 

                            Package (0x02)
                            {
                                "Off", 
                                "On"
                            }
                        })
                        Method (WQA9, 1, NotSerialized)
                        {
                            Acquire (^^WMI1.MWMI, 0xFFFF)
                            If (WMIS (0x09, Arg0) != Zero)
                            {
                                Release (^^WMI1.MWMI)
                                Return ("")
                            }

                            Local0 = DerefOf (ITEM [WITM])
                            Local1 = DerefOf (Local0 [Zero])
                            Local2 = DerefOf (Local0 [One])
                            Concatenate (Local2, ",", Local6)
                            Local3 = DerefOf (VSEL [Local1])
                            Concatenate (Local6, DerefOf (Local3 [WSEL]), Local7)
                            Release (^^WMI1.MWMI)
                            Return (Local7)
                        }

                        Method (WMAA, 3, NotSerialized)
                        {
                            Acquire (^^WMI1.MWMI, 0xFFFF)
                            If (SizeOf (Arg2) == Zero)
                            {
                                Local0 = 0x02
                            }
                            Else
                            {
                                Local0 = ^^WMI1.CARG (Arg2)
                                If (Local0 == Zero)
                                {
                                    Local0 = ^^WMI1.WSET (ITEM, VSEL)
                                    If (Local0 == Zero)
                                    {
                                        Local0 = WMIS (0x0A, Zero)
                                    }
                                }
                            }

                            Release (^^WMI1.MWMI)
                            Return (DerefOf (^^WMI1.RETN [Local0]))
                        }

                        Name (WQBB, Buffer (0x0538)
                        {
                            /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  /* FOMB.... */
                            /* 0008 */  0x28, 0x05, 0x00, 0x00, 0xAE, 0x18, 0x00, 0x00,  /* (....... */
                            /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  /* DS...}.T */
                            /* 0018 */  0x98, 0xDE, 0x8B, 0x00, 0x01, 0x06, 0x18, 0x42,  /* .......B */
                            /* 0020 */  0x10, 0x0D, 0x10, 0x8A, 0x0D, 0x21, 0x02, 0x0B,  /* .....!.. */
                            /* 0028 */  0x83, 0x50, 0x50, 0x18, 0x14, 0xA0, 0x45, 0x41,  /* .PP...EA */
                            /* 0030 */  0xC8, 0x05, 0x14, 0x95, 0x02, 0x21, 0xC3, 0x02,  /* .....!.. */
                            /* 0038 */  0x14, 0x0B, 0x70, 0x2E, 0x40, 0xBA, 0x00, 0xE5,  /* ..p.@... */
                            /* 0040 */  0x28, 0x72, 0x0C, 0x22, 0x02, 0xF7, 0xEF, 0x0F,  /* (r.".... */
                            /* 0048 */  0x31, 0x10, 0x88, 0x14, 0x40, 0x48, 0x28, 0x84,  /* 1...@H(. */
                            /* 0050 */  0x44, 0x00, 0x53, 0x21, 0x70, 0x84, 0xA0, 0x5F,  /* D.S!p.._ */
                            /* 0058 */  0x01, 0x08, 0x1D, 0x0A, 0x90, 0x29, 0xC0, 0xA0,  /* .....).. */
                            /* 0060 */  0x00, 0xA7, 0x08, 0x22, 0x88, 0xD2, 0xB2, 0x00,  /* ...".... */
                            /* 0068 */  0xDD, 0x02, 0x7C, 0x0B, 0xD0, 0x0E, 0x21, 0xB4,  /* ..|...!. */
                            /* 0070 */  0xC8, 0x95, 0x0A, 0xB0, 0x08, 0x25, 0x9F, 0x80,  /* .....%.. */
                            /* 0078 */  0x92, 0x88, 0x22, 0xD9, 0x78, 0xB2, 0x8D, 0x48,  /* ..".x..H */
                            /* 0080 */  0xE6, 0x61, 0x91, 0x83, 0x40, 0x89, 0x19, 0x04,  /* .a..@... */
                            /* 0088 */  0x4A, 0x27, 0xAE, 0x6C, 0xE2, 0x6A, 0x10, 0x07,  /* J'.l.j.. */
                            /* 0090 */  0x10, 0xE5, 0x3C, 0xA2, 0x24, 0x38, 0xAA, 0x83,  /* ..<.$8.. */
                            /* 0098 */  0x88, 0x10, 0xBB, 0x5C, 0x01, 0x92, 0x07, 0x20,  /* ...\...  */
                            /* 00A0 */  0xCD, 0x13, 0x93, 0xF5, 0x39, 0x68, 0x64, 0x6C,  /* ....9hdl */
                            /* 00A8 */  0x04, 0x3C, 0x98, 0x04, 0x10, 0x16, 0x65, 0x9D,  /* .<....e. */
                            /* 00B0 */  0x8A, 0x02, 0x83, 0xF2, 0x00, 0x22, 0x39, 0x63,  /* ....."9c */
                            /* 00B8 */  0x45, 0x01, 0xDB, 0xEB, 0x44, 0x64, 0x72, 0xA0,  /* E...Ddr. */
                            /* 00C0 */  0x54, 0x12, 0x1C, 0x6A, 0x98, 0x9E, 0x5A, 0xF3,  /* T..j..Z. */
                            /* 00C8 */  0x13, 0xD3, 0x44, 0x4E, 0xAD, 0xE9, 0x21, 0x0B,  /* ..DN..!. */
                            /* 00D0 */  0x92, 0x49, 0x1B, 0x0A, 0x6A, 0xEC, 0x9E, 0xD6,  /* .I..j... */
                            /* 00D8 */  0x49, 0x79, 0xA6, 0x11, 0x0F, 0xCA, 0x30, 0x09,  /* Iy....0. */
                            /* 00E0 */  0x3C, 0x0A, 0x86, 0xC6, 0x09, 0xCA, 0x82, 0x90,  /* <....... */
                            /* 00E8 */  0x83, 0x81, 0xA2, 0x00, 0x4F, 0xC2, 0x73, 0x2C,  /* ....O.s, */
                            /* 00F0 */  0x5E, 0x80, 0xF0, 0x11, 0x93, 0xB3, 0x40, 0x8C,  /* ^.....@. */
                            /* 00F8 */  0x04, 0x3E, 0x13, 0x78, 0xE4, 0xC7, 0x8C, 0x1D,  /* .>.x.... */
                            /* 0100 */  0x51, 0xB8, 0x80, 0xE7, 0x73, 0x0C, 0x91, 0xE3,  /* Q...s... */
                            /* 0108 */  0x1E, 0x6A, 0x8C, 0xA3, 0x88, 0x7C, 0x38, 0x0C,  /* .j...|8. */
                            /* 0110 */  0xED, 0x74, 0xE3, 0x1C, 0xD8, 0xE9, 0x14, 0x04,  /* .t...... */
                            /* 0118 */  0x2E, 0x90, 0x60, 0x3D, 0xCF, 0x59, 0x20, 0xFF,  /* ..`=.Y . */
                            /* 0120 */  0xFF, 0x18, 0x07, 0xC1, 0xF0, 0x8E, 0x01, 0x23,  /* .......# */
                            /* 0128 */  0x03, 0x42, 0x1E, 0x05, 0x58, 0x1D, 0x96, 0x26,  /* .B..X..& */
                            /* 0130 */  0x91, 0xC0, 0xEE, 0x05, 0x68, 0xBC, 0x04, 0x48,  /* ....h..H */
                            /* 0138 */  0xE1, 0x20, 0xA5, 0x0C, 0x42, 0x30, 0x8D, 0x09,  /* . ..B0.. */
                            /* 0140 */  0xB0, 0x75, 0x68, 0x90, 0x37, 0x01, 0xD6, 0xAE,  /* .uh.7... */
                            /* 0148 */  0x02, 0x42, 0x89, 0x74, 0x02, 0x71, 0x42, 0x44,  /* .B.t.qBD */
                            /* 0150 */  0x89, 0x18, 0xD4, 0x40, 0x51, 0x6A, 0x43, 0x15,  /* ...@QjC. */
                            /* 0158 */  0x4C, 0x67, 0xC3, 0x13, 0x66, 0xDC, 0x10, 0x31,  /* Lg..f..1 */
                            /* 0160 */  0x0C, 0x14, 0xB7, 0xFD, 0x41, 0x90, 0x61, 0xE3,  /* ....A.a. */
                            /* 0168 */  0xC6, 0xEF, 0x41, 0x9D, 0xD6, 0xD9, 0x1D, 0xD3,  /* ..A..... */
                            /* 0170 */  0xAB, 0x82, 0x09, 0x3C, 0xE9, 0x37, 0x84, 0xA7,  /* ...<.7.. */
                            /* 0178 */  0x83, 0xA3, 0x38, 0xDA, 0xA8, 0x31, 0x9A, 0x23,  /* ..8..1.# */
                            /* 0180 */  0x65, 0xAB, 0xD6, 0xB9, 0xC2, 0x91, 0xE0, 0x51,  /* e......Q */
                            /* 0188 */  0xE7, 0x05, 0x9F, 0x0C, 0x3C, 0xB4, 0xC3, 0xF6,  /* ....<... */
                            /* 0190 */  0x60, 0xCF, 0xD2, 0x43, 0x38, 0x82, 0x67, 0x86,  /* `..C8.g. */
                            /* 0198 */  0x47, 0x02, 0x8F, 0x81, 0xDD, 0x15, 0x7C, 0x08,  /* G.....|. */
                            /* 01A0 */  0xF0, 0x19, 0x01, 0xEF, 0x1A, 0x50, 0x97, 0x83,  /* .....P.. */
                            /* 01A8 */  0x47, 0x03, 0x36, 0xE9, 0x70, 0x98, 0xF1, 0x7A,  /* G.6.p..z */
                            /* 01B0 */  0xEE, 0x9E, 0xBA, 0xCF, 0x18, 0xFC, 0xBC, 0xE1,  /* ........ */
                            /* 01B8 */  0xC1, 0xE1, 0x46, 0x7A, 0x32, 0x47, 0x56, 0xAA,  /* ..Fz2GV. */
                            /* 01C0 */  0x00, 0xB3, 0xD7, 0x00, 0x1D, 0x25, 0x7C, 0xE0,  /* .....%|. */
                            /* 01C8 */  0x60, 0x77, 0x81, 0xA7, 0x00, 0x13, 0x58, 0xFE,  /* `w....X. */
                            /* 01D0 */  0x20, 0x50, 0x23, 0x33, 0xB4, 0xC7, 0xFB, 0xDE,  /*  P#3.... */
                            /* 01D8 */  0x61, 0xC8, 0x27, 0x85, 0xC3, 0x62, 0x62, 0x0F,  /* a.'..bb. */
                            /* 01E0 */  0x1E, 0x74, 0x3C, 0xE0, 0xBF, 0x8F, 0x3C, 0x69,  /* .t<...<i */
                            /* 01E8 */  0x78, 0xFA, 0x9E, 0xAF, 0x09, 0x06, 0x86, 0x90,  /* x....... */
                            /* 01F0 */  0x95, 0xF1, 0xA0, 0x06, 0x62, 0xE8, 0x57, 0x85,  /* ....b.W. */
                            /* 01F8 */  0xC3, 0x38, 0x0D, 0x9F, 0x40, 0x7C, 0x0E, 0x08,  /* .8..@|.. */
                            /* 0200 */  0x12, 0xE3, 0x98, 0x3C, 0x38, 0xFF, 0xFF, 0x09,  /* ...<8... */
                            /* 0208 */  0x1C, 0x6B, 0xE4, 0xF4, 0x9C, 0xE2, 0xF3, 0x04,  /* .k...... */
                            /* 0210 */  0x3F, 0x5C, 0xF8, 0x3C, 0xC1, 0x4E, 0x0C, 0xA7,  /* ?\.<.N.. */
                            /* 0218 */  0xF1, 0x1C, 0xE0, 0xE1, 0x9C, 0x95, 0x8F, 0x13,  /* ........ */
                            /* 0220 */  0xC0, 0x02, 0xE2, 0x75, 0x82, 0x0F, 0x14, 0x3E,  /* ...u...> */
                            /* 0228 */  0xEC, 0xA1, 0x79, 0x14, 0x2F, 0x11, 0x6F, 0x0F,  /* ..y./.o. */
                            /* 0230 */  0x26, 0x88, 0xF6, 0x10, 0x03, 0xC6, 0x19, 0xE1,  /* &....... */
                            /* 0238 */  0xCE, 0x1B, 0x70, 0x4E, 0x31, 0xC0, 0x03, 0xEA,  /* ..pN1... */
                            /* 0240 */  0x10, 0x30, 0x87, 0x09, 0x0F, 0x81, 0x0F, 0xE0,  /* .0...... */
                            /* 0248 */  0x19, 0xE4, 0x1C, 0x7D, 0xCC, 0x39, 0x33, 0xDC,  /* ...}.93. */
                            /* 0250 */  0x71, 0x07, 0x6C, 0xC3, 0xE0, 0x91, 0x2D, 0x80,  /* q.l...-. */
                            /* 0258 */  0xB0, 0x38, 0x4F, 0x02, 0x05, 0x7C, 0x1B, 0x50,  /* .8O..|.P */
                            /* 0260 */  0x18, 0x1F, 0x6E, 0xC0, 0xFB, 0xFF, 0x3F, 0xDC,  /* ..n...?. */
                            /* 0268 */  0x00, 0xD7, 0xF3, 0x01, 0xEE, 0xF8, 0x00, 0xF7,  /* ........ */
                            /* 0270 */  0x62, 0xC1, 0x0E, 0x0F, 0x8F, 0x37, 0xC0, 0x60,  /* b....7.` */
                            /* 0278 */  0x48, 0x8F, 0x34, 0x6F, 0x35, 0x31, 0x5E, 0x6D,  /* H.4o51^m */
                            /* 0280 */  0x42, 0x44, 0x78, 0xA8, 0x79, 0xB7, 0x31, 0x52,  /* BDx.y.1R */
                            /* 0288 */  0xBC, 0xC7, 0x1B, 0x76, 0x8D, 0x39, 0x8B, 0x07,  /* ...v.9.. */
                            /* 0290 */  0x90, 0x28, 0xC5, 0xA1, 0xE9, 0x62, 0x13, 0x23,  /* .(...b.# */
                            /* 0298 */  0xCA, 0x9B, 0x8D, 0x61, 0xDF, 0x74, 0x0C, 0x14,  /* ...a.t.. */
                            /* 02A0 */  0x2A, 0x52, 0x84, 0x30, 0x2F, 0x16, 0x21, 0x1E,  /* *R.0/.!. */
                            /* 02A8 */  0x6F, 0xC0, 0x2C, 0xE9, 0xA5, 0xA2, 0xCF, 0x81,  /* o.,..... */
                            /* 02B0 */  0x8F, 0x37, 0x80, 0x97, 0xFF, 0xFF, 0xF1, 0x06,  /* .7...... */
                            /* 02B8 */  0xF0, 0x30, 0x0C, 0x1F, 0x53, 0xC0, 0x76, 0x73,  /* .0..S.vs */
                            /* 02C0 */  0x60, 0xF7, 0x14, 0xF8, 0xE7, 0x14, 0xC0, 0x91,  /* `....... */
                            /* 02C8 */  0x90, 0x47, 0x80, 0x0E, 0x1E, 0x16, 0x01, 0x22,  /* .G....." */
                            /* 02D0 */  0x1B, 0xCF, 0x00, 0x9F, 0x89, 0xA8, 0x40, 0x2A,  /* ......@* */
                            /* 02D8 */  0xCD, 0x14, 0x2C, 0xE3, 0x14, 0xAC, 0x4E, 0x88,  /* ..,...N. */
                            /* 02E0 */  0x5C, 0x06, 0x85, 0x44, 0x40, 0x68, 0x64, 0x86,  /* \..D@hd. */
                            /* 02E8 */  0xF3, 0x21, 0xD1, 0x60, 0x06, 0xF1, 0xF9, 0xC0,  /* .!.`.... */
                            /* 02F0 */  0x67, 0x0A, 0x9F, 0x9C, 0xF8, 0xFF, 0xFF, 0xE4,  /* g....... */
                            /* 02F8 */  0x04, 0x9E, 0x83, 0xC9, 0x43, 0x05, 0x2C, 0x44,  /* ....C.,D */
                            /* 0300 */  0x9F, 0x16, 0x38, 0x9C, 0xCF, 0x2C, 0x1C, 0xCE,  /* ..8..,.. */
                            /* 0308 */  0x47, 0x12, 0x7E, 0x80, 0xE4, 0x47, 0x25, 0x70,  /* G.~..G%p */
                            /* 0310 */  0x09, 0x3C, 0x34, 0x80, 0x02, 0xC8, 0xF7, 0x03,  /* .<4..... */
                            /* 0318 */  0x9F, 0x03, 0x9E, 0x11, 0xD8, 0x1C, 0x1E, 0x09,  /* ........ */
                            /* 0320 */  0x7C, 0x20, 0x60, 0xF0, 0x3C, 0xDA, 0xA8, 0xE8,  /* | `.<... */
                            /* 0328 */  0xD1, 0xC6, 0xC3, 0xE3, 0x47, 0x06, 0xCF, 0xE7,  /* ....G... */
                            /* 0330 */  0x81, 0xE0, 0x28, 0x1F, 0x09, 0x70, 0x18, 0xEF,  /* ..(..p.. */
                            /* 0338 */  0x17, 0x1E, 0xA2, 0x4F, 0x39, 0xB0, 0x26, 0x72,  /* ...O9.&r */
                            /* 0340 */  0xD4, 0x16, 0x7D, 0x22, 0x10, 0xE8, 0x33, 0x17,  /* ..}"..3. */
                            /* 0348 */  0xE6, 0x94, 0x03, 0x9C, 0x82, 0x8F, 0x1E, 0x15,  /* ........ */
                            /* 0350 */  0xF5, 0x40, 0x0A, 0xDA, 0x93, 0x82, 0xCF, 0x0A,  /* .@...... */
                            /* 0358 */  0x3E, 0x7C, 0xC1, 0xFF, 0xFF, 0x1F, 0xBE, 0xE0,  /* >|...... */
                            /* 0360 */  0xCC, 0xEB, 0x65, 0xCD, 0x07, 0x8E, 0x38, 0x67,  /* ..e...8g */
                            /* 0368 */  0x71, 0xBA, 0xEF, 0x16, 0xF8, 0x13, 0x29, 0x30,  /* q.....)0 */
                            /* 0370 */  0x0B, 0x72, 0x22, 0x45, 0xC1, 0xF8, 0x44, 0x0A,  /* .r"E..D. */
                            /* 0378 */  0xD8, 0xBC, 0x05, 0x60, 0xAF, 0x0B, 0x4F, 0x22,  /* ...`..O" */
                            /* 0380 */  0x30, 0xCE, 0x11, 0xCF, 0x58, 0x30, 0x0F, 0x55,  /* 0...X0.U */
                            /* 0388 */  0xA7, 0xF8, 0x52, 0xF5, 0xC6, 0x10, 0xE1, 0xC9,  /* ..R..... */
                            /* 0390 */  0xEA, 0x35, 0xEA, 0x01, 0xCB, 0x60, 0x2F, 0x02,  /* .5...`/. */
                            /* 0398 */  0x86, 0x79, 0xC5, 0xF2, 0xE9, 0x2A, 0xC4, 0x03,  /* .y...*.. */
                            /* 03A0 */  0x96, 0xCF, 0x5A, 0xD1, 0x42, 0x84, 0x8C, 0x12,  /* ..Z.B... */
                            /* 03A8 */  0xEC, 0x15, 0xEB, 0x55, 0xC6, 0x47, 0x2A, 0x83,  /* ...U.G*. */
                            /* 03B0 */  0x07, 0x0C, 0x1B, 0x2D, 0x52, 0x84, 0x47, 0x2C,  /* ...-R.G, */
                            /* 03B8 */  0xFC, 0xFF, 0xFF, 0x88, 0x05, 0x1E, 0x09, 0x07,  /* ........ */
                            /* 03C0 */  0x52, 0x80, 0x2A, 0x03, 0xC7, 0x1D, 0x48, 0x81,  /* R.*...H. */
                            /* 03C8 */  0xFD, 0x69, 0x02, 0x7F, 0xBD, 0xF0, 0x78, 0xB0,  /* .i....x. */
                            /* 03D0 */  0xFF, 0xFF, 0x73, 0x00, 0xF8, 0x0E, 0x31, 0xC0,  /* ..s...1. */
                            /* 03D8 */  0x60, 0xC0, 0x30, 0x0E, 0x31, 0xC0, 0x43, 0xF0,  /* `.0.1.C. */
                            /* 03E0 */  0xC9, 0x0C, 0xF4, 0xC7, 0x1D, 0xF8, 0xE3, 0xE0,  /* ........ */
                            /* 03E8 */  0x19, 0x9F, 0x1C, 0x26, 0x50, 0x98, 0x13, 0x29,  /* ...&P..) */
                            /* 03F0 */  0x0A, 0xC6, 0x27, 0x52, 0xC0, 0xD9, 0xFF, 0xFF,  /* ..'R.... */
                            /* 03F8 */  0x70, 0x05, 0x86, 0xE3, 0x0D, 0xF8, 0x6F, 0x33,  /* p.....o3 */
                            /* 0400 */  0x3E, 0x84, 0xFA, 0x7C, 0xE3, 0x0B, 0xA9, 0x21,  /* >..|...! */
                            /* 0408 */  0x5E, 0x6C, 0xDE, 0xD4, 0x5E, 0x09, 0x5E, 0xDF,  /* ^l..^.^. */
                            /* 0410 */  0xD9, 0xB5, 0xE6, 0xF5, 0xDD, 0xA7, 0x82, 0x27,  /* .......' */
                            /* 0418 */  0xD1, 0x08, 0x21, 0xA3, 0xBC, 0xE4, 0x18, 0x24,  /* ..!....$ */
                            /* 0420 */  0xC4, 0xEB, 0xA8, 0x01, 0x83, 0x05, 0x89, 0x78,  /* .......x */
                            /* 0428 */  0x0A, 0x4F, 0x3B, 0x8F, 0x37, 0xE0, 0x15, 0x75,  /* .O;.7..u */
                            /* 0430 */  0x20, 0x05, 0xE8, 0xF1, 0xFF, 0x3F, 0x90, 0x02,  /*  ....?.. */
                            /* 0438 */  0x83, 0x7B, 0x0A, 0xEC, 0x73, 0x0A, 0xE0, 0x29,  /* .{..s..) */
                            /* 0440 */  0xF9, 0x89, 0x94, 0xA6, 0x3E, 0x91, 0xA2, 0x15,  /* ....>... */
                            /* 0448 */  0x01, 0x69, 0xAA, 0x60, 0x21, 0x98, 0xFE, 0x44,  /* .i.`!..D */
                            /* 0450 */  0x4A, 0x0F, 0x06, 0xCE, 0x4D, 0xA2, 0xE4, 0x43,  /* J...M..C */
                            /* 0458 */  0xA3, 0x70, 0xCE, 0x7A, 0x20, 0xA1, 0x20, 0x06,  /* .p.z . . */
                            /* 0460 */  0x74, 0x90, 0x43, 0x05, 0xFA, 0xAC, 0xE2, 0x03,  /* t.C..... */
                            /* 0468 */  0xC9, 0x81, 0x3C, 0x22, 0x7A, 0x58, 0x3E, 0x54,  /* ..<"zX>T */
                            /* 0470 */  0xFA, 0xAE, 0xE2, 0x73, 0x88, 0x8F, 0x14, 0x1E,  /* ...s.... */
                            /* 0478 */  0xBF, 0x0F, 0x0B, 0xFC, 0x3F, 0xE3, 0xE3, 0x28,  /* ....?..( */
                            /* 0480 */  0x03, 0xAF, 0xE6, 0xBC, 0x82, 0x02, 0xF3, 0x69,  /* .......i */
                            /* 0488 */  0x14, 0xA3, 0xEB, 0x3E, 0x01, 0x92, 0xFF, 0xFF,  /* ...>.... */
                            /* 0490 */  0xFC, 0xB8, 0xBE, 0xC3, 0x28, 0xC8, 0xD1, 0x79,  /* ....(..y */
                            /* 0498 */  0xF8, 0xC9, 0xA2, 0xE2, 0x4E, 0x96, 0x82, 0x78,  /* ....N..x */
                            /* 04A0 */  0xB2, 0x8E, 0x32, 0x59, 0xF4, 0x4C, 0x7C, 0xBB,  /* ..2Y.L|. */
                            /* 04A8 */  0xF0, 0x8C, 0xDE, 0xBB, 0x7C, 0x83, 0x65, 0x37,  /* ....|.e7 */
                            /* 04B0 */  0x59, 0x78, 0x97, 0x81, 0x90, 0x8F, 0x06, 0xBE,  /* Yx...... */
                            /* 04B8 */  0xC9, 0xC2, 0x1D, 0x8B, 0x2F, 0x23, 0xE0, 0xBB,  /* ..../#.. */
                            /* 04C0 */  0xC9, 0x02, 0x5E, 0x47, 0xE3, 0xB3, 0x05, 0x3B,  /* ..^G...; */
                            /* 04C8 */  0x85, 0xF8, 0xBA, 0x06, 0x4B, 0xA1, 0x4D, 0x9F,  /* ....K.M. */
                            /* 04D0 */  0x1A, 0x8D, 0x5A, 0xFD, 0xFF, 0x1B, 0x94, 0xA9,  /* ..Z..... */
                            /* 04D8 */  0x51, 0xA6, 0x41, 0xAD, 0x3E, 0x95, 0x1A, 0x33,  /* Q.A.>..3 */
                            /* 04E0 */  0x76, 0xA1, 0xB0, 0xB8, 0x0B, 0x06, 0x95, 0xB4,  /* v....... */
                            /* 04E8 */  0x2C, 0x8D, 0xCB, 0x81, 0x40, 0x68, 0x80, 0x5B,  /* ,...@h.[ */
                            /* 04F0 */  0xA9, 0x40, 0x1C, 0xFA, 0x0B, 0xA4, 0x53, 0x02,  /* .@....S. */
                            /* 04F8 */  0xF9, 0x6A, 0x09, 0xC8, 0x62, 0x57, 0x25, 0x10,  /* .j..bW%. */
                            /* 0500 */  0xCB, 0x54, 0x01, 0xD1, 0xC8, 0xDD, 0xC2, 0x20,  /* .T.....  */
                            /* 0508 */  0x02, 0x72, 0xBC, 0x4F, 0x8D, 0x40, 0x1D, 0x49,  /* .r.O.@.I */
                            /* 0510 */  0x07, 0x10, 0x13, 0xE4, 0x63, 0xAC, 0xF4, 0x25,  /* ....c..% */
                            /* 0518 */  0x20, 0x10, 0xCB, 0xA6, 0x15, 0xA0, 0xE5, 0x3A,  /*  ......: */
                            /* 0520 */  0x01, 0x62, 0x61, 0x41, 0x68, 0xC0, 0x5F, 0xB5,  /* .baAh._. */
                            /* 0528 */  0x86, 0xE0, 0xB4, 0x20, 0x02, 0x72, 0x32, 0x2D,  /* ... .r2- */
                            /* 0530 */  0x40, 0x2C, 0x27, 0x88, 0x80, 0xFC, 0xFF, 0x07   /* @,'..... */
                        })
                    }

                    Device (WMI3)
                    {
                        Name (_HID, EisaId ("PNP0C14") /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
                        Name (_UID, 0x03)  // _UID: Unique ID
                        Name (_WDG, /**** Is ResourceTemplate, but EndTag not at buffer end ****/ Buffer (0x3C)
                        {
                            /* 0000 */  0x79, 0x36, 0x4D, 0x8F, 0x9E, 0x74, 0x79, 0x44,  /* y6M..tyD */
                            /* 0008 */  0x9B, 0x16, 0xC6, 0x26, 0x01, 0xFD, 0x25, 0xF0,  /* ...&..%. */
                            /* 0010 */  0x41, 0x42, 0x01, 0x02, 0x69, 0xE8, 0xD2, 0x85,  /* AB..i... */
                            /* 0018 */  0x5A, 0x36, 0xCE, 0x4A, 0xA4, 0xD3, 0xCD, 0x69,  /* Z6.J...i */
                            /* 0020 */  0x2B, 0x16, 0x98, 0xA0, 0x41, 0x43, 0x01, 0x02,  /* +...AC.. */
                            /* 0028 */  0x21, 0x12, 0x90, 0x05, 0x66, 0xD5, 0xD1, 0x11,  /* !...f... */
                            /* 0030 */  0xB2, 0xF0, 0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10,  /* ......). */
                            /* 0038 */  0x42, 0x43, 0x01, 0x00                           /* BC.. */
                        })
                        Method (WMAB, 3, NotSerialized)
                        {
                            CreateByteField (Arg2, Zero, ASS0)
                            CreateWordField (Arg2, One, ASS1)
                            CreateByteField (Arg2, 0x03, ASS2)
                            Acquire (^^WMI1.MWMI, 0xFFFF)
                            WASB = ASS0 /* \_SB_.WMI3.WMAB.ASS0 */
                            WASI = ASS1 /* \_SB_.WMI3.WMAB.ASS1 */
                            WASD = ASS2 /* \_SB_.WMI3.WMAB.ASS2 */
                            WMIS (0x0B, Zero)
                            Local0 = WASS /* \WASS */
                            Release (^^WMI1.MWMI)
                            Return (Local0)
                        }

                        Method (WMAC, 3, NotSerialized)
                        {
                            CreateByteField (Arg2, Zero, ASS0)
                            CreateWordField (Arg2, One, ASS1)
                            Acquire (^^WMI1.MWMI, 0xFFFF)
                            WASB = ASS0 /* \_SB_.WMI3.WMAC.ASS0 */
                            WASI = ASS1 /* \_SB_.WMI3.WMAC.ASS1 */
                            WMIS (0x0C, Arg1)
                            Local0 = WASS /* \WASS */
                            Release (^^WMI1.MWMI)
                            Return (Local0)
                        }

                        Name (WQBC, Buffer (0x040A)
                        {
                            /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  /* FOMB.... */
                            /* 0008 */  0xFA, 0x03, 0x00, 0x00, 0x32, 0x12, 0x00, 0x00,  /* ....2... */
                            /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  /* DS...}.T */
                            /* 0018 */  0x98, 0xC3, 0x88, 0x00, 0x01, 0x06, 0x18, 0x42,  /* .......B */
                            /* 0020 */  0x10, 0x07, 0x10, 0x8A, 0x0D, 0x21, 0x02, 0x0B,  /* .....!.. */
                            /* 0028 */  0x83, 0x50, 0x50, 0x18, 0x14, 0xA0, 0x45, 0x41,  /* .PP...EA */
                            /* 0030 */  0xC8, 0x05, 0x14, 0x95, 0x02, 0x21, 0xC3, 0x02,  /* .....!.. */
                            /* 0038 */  0x14, 0x0B, 0x70, 0x2E, 0x40, 0xBA, 0x00, 0xE5,  /* ..p.@... */
                            /* 0040 */  0x28, 0x72, 0x0C, 0x22, 0x02, 0xF7, 0xEF, 0x0F,  /* (r.".... */
                            /* 0048 */  0x31, 0x10, 0x88, 0x14, 0x40, 0x48, 0x28, 0x84,  /* 1...@H(. */
                            /* 0050 */  0x44, 0x00, 0x53, 0x21, 0x70, 0x84, 0xA0, 0x5F,  /* D.S!p.._ */
                            /* 0058 */  0x01, 0x08, 0x1D, 0x0A, 0x90, 0x29, 0xC0, 0xA0,  /* .....).. */
                            /* 0060 */  0x00, 0xA7, 0x08, 0x22, 0x88, 0xD2, 0xB2, 0x00,  /* ...".... */
                            /* 0068 */  0xDD, 0x02, 0x7C, 0x0B, 0xD0, 0x0E, 0x21, 0xB4,  /* ..|...!. */
                            /* 0070 */  0x58, 0x07, 0x11, 0x21, 0xD2, 0x31, 0x34, 0x29,  /* X..!.14) */
                            /* 0078 */  0x40, 0xA2, 0x00, 0x8B, 0x02, 0x64, 0xC3, 0xC8,  /* @....d.. */
                            /* 0080 */  0x36, 0x22, 0x99, 0x87, 0x45, 0x0E, 0x02, 0x25,  /* 6"..E..% */
                            /* 0088 */  0x66, 0x10, 0x28, 0x9D, 0xE0, 0xB2, 0x89, 0xAB,  /* f.(..... */
                            /* 0090 */  0x41, 0x9C, 0x4C, 0x94, 0xF3, 0x88, 0x92, 0xE0,  /* A.L..... */
                            /* 0098 */  0xA8, 0x0E, 0x22, 0x42, 0xEC, 0x72, 0x05, 0x48,  /* .."B.r.H */
                            /* 00A0 */  0x1E, 0x80, 0x34, 0x4F, 0x4C, 0xD6, 0xE7, 0xA0,  /* ..4OL... */
                            /* 00A8 */  0x91, 0xB1, 0x11, 0xF0, 0x94, 0x1A, 0x40, 0x58,  /* ......@X */
                            /* 00B0 */  0xA0, 0x75, 0x2A, 0xE0, 0x7A, 0x0D, 0x43, 0x3D,  /* .u*.z.C= */
                            /* 00B8 */  0x80, 0x48, 0xCE, 0x58, 0x51, 0xC0, 0xF6, 0x3A,  /* .H.XQ..: */
                            /* 00C0 */  0x11, 0x8D, 0xEA, 0x40, 0x99, 0x24, 0x38, 0xD4,  /* ...@.$8. */
                            /* 00C8 */  0x30, 0x3D, 0xB5, 0xE6, 0x27, 0xA6, 0x89, 0x9C,  /* 0=..'... */
                            /* 00D0 */  0x5A, 0xD3, 0x43, 0x16, 0x24, 0x93, 0x36, 0x14,  /* Z.C.$.6. */
                            /* 00D8 */  0xD4, 0xD8, 0x3D, 0xAD, 0x93, 0xF2, 0x4C, 0x23,  /* ..=...L# */
                            /* 00E0 */  0x1E, 0x94, 0x61, 0x12, 0x78, 0x14, 0x0C, 0x8D,  /* ..a.x... */
                            /* 00E8 */  0x13, 0x94, 0x75, 0x22, 0xA0, 0x03, 0xE5, 0x80,  /* ..u".... */
                            /* 00F0 */  0x27, 0xE1, 0x39, 0x16, 0x2F, 0x40, 0xF8, 0x88,  /* '.9./@.. */
                            /* 00F8 */  0xC9, 0xB4, 0x4D, 0xE0, 0x33, 0x81, 0x87, 0x79,  /* ..M.3..y */
                            /* 0100 */  0xCC, 0xD8, 0x11, 0x85, 0x0B, 0x78, 0x3E, 0xC7,  /* .....x>. */
                            /* 0108 */  0x10, 0x39, 0xEE, 0xA1, 0xC6, 0x38, 0x8A, 0xC8,  /* .9...8.. */
                            /* 0110 */  0x47, 0x60, 0x24, 0x03, 0xC5, 0x2B, 0x08, 0x89,  /* G`$..+.. */
                            /* 0118 */  0x80, 0xF8, 0x76, 0x70, 0x70, 0x91, 0xFC, 0xFF,  /* ..vpp... */
                            /* 0120 */  0x47, 0x89, 0x11, 0x2A, 0xC6, 0xDB, 0x00, 0x6E,  /* G..*...n */
                            /* 0128 */  0x5E, 0x09, 0x8A, 0x1E, 0x07, 0x4A, 0x06, 0x84,  /* ^....J.. */
                            /* 0130 */  0x3C, 0x0A, 0xB0, 0x7A, 0x28, 0x20, 0x04, 0x16,  /* <..z( .. */
                            /* 0138 */  0x27, 0x40, 0xE3, 0x38, 0x05, 0xD3, 0x99, 0x00,  /* '@.8.... */
                            /* 0140 */  0x6D, 0x02, 0xBC, 0x09, 0x30, 0x27, 0xC0, 0x16,  /* m...0'.. */
                            /* 0148 */  0x86, 0x80, 0x82, 0x9C, 0x59, 0x94, 0x20, 0x11,  /* ....Y. . */
                            /* 0150 */  0x42, 0x31, 0x88, 0x0A, 0x05, 0x18, 0x43, 0x14,  /* B1....C. */
                            /* 0158 */  0xCA, 0x3B, 0x41, 0x8C, 0xCA, 0x20, 0x74, 0x82,  /* .;A.. t. */
                            /* 0160 */  0x08, 0x14, 0x3D, 0x78, 0x98, 0xD6, 0x40, 0x74,  /* ..=x..@t */
                            /* 0168 */  0x89, 0xF0, 0xC8, 0xB1, 0x47, 0x00, 0x9F, 0x19,  /* ....G... */
                            /* 0170 */  0xCE, 0xE9, 0x04, 0x1F, 0x01, 0xDE, 0x16, 0x4C,  /* .......L */
                            /* 0178 */  0xE0, 0x79, 0xBF, 0x24, 0x1C, 0x6A, 0xD8, 0x03,  /* .y.$.j.. */
                            /* 0180 */  0x8E, 0x1A, 0xE3, 0x28, 0x12, 0x58, 0xD0, 0x33,  /* ...(.X.3 */
                            /* 0188 */  0x42, 0x16, 0x40, 0x14, 0x09, 0x1E, 0x75, 0x64,  /* B.@...ud */
                            /* 0190 */  0xF0, 0xE1, 0xC0, 0x23, 0x3B, 0x72, 0xCF, 0xF0,  /* ...#;r.. */
                            /* 0198 */  0x04, 0x82, 0x1C, 0xC2, 0x11, 0x3C, 0x36, 0x3C,  /* .....<6< */
                            /* 01A0 */  0x15, 0x78, 0x0C, 0xEC, 0xBA, 0xE0, 0x73, 0x80,  /* .x....s. */
                            /* 01A8 */  0x8F, 0x09, 0x78, 0xD7, 0x80, 0x9A, 0xF3, 0xD3,  /* ..x..... */
                            /* 01B0 */  0x01, 0x9B, 0x72, 0x38, 0xCC, 0x70, 0x3D, 0xFD,  /* ..r8.p=. */
                            /* 01B8 */  0x70, 0x27, 0x70, 0xD2, 0x06, 0x64, 0xB3, 0xF3,  /* p'p..d.. */
                            /* 01C0 */  0xE0, 0x70, 0xE3, 0x3C, 0x99, 0x23, 0x2B, 0x55,  /* .p.<.#+U */
                            /* 01C8 */  0x80, 0xD9, 0x13, 0x82, 0x4E, 0x13, 0x3E, 0x73,  /* ....N.>s */
                            /* 01D0 */  0xB0, 0xBB, 0xC0, 0xF9, 0xF4, 0x0C, 0x49, 0xE4,  /* ......I. */
                            /* 01D8 */  0x0F, 0x02, 0x35, 0x32, 0x43, 0xFB, 0x2C, 0xF0,  /* ..52C.,. */
                            /* 01E0 */  0xEA, 0x61, 0xC8, 0x87, 0x85, 0xC3, 0x62, 0x62,  /* .a....bb */
                            /* 01E8 */  0xCF, 0x1E, 0x74, 0x3C, 0xE0, 0x3F, 0x25, 0x3C,  /* ..t<.?%< */
                            /* 01F0 */  0x6C, 0x78, 0xFA, 0x9E, 0xAF, 0x09, 0xA2, 0x3D,  /* lx.....= */
                            /* 01F8 */  0x8F, 0x80, 0xE1, 0xFF, 0x7F, 0x1E, 0x81, 0x39,  /* .......9 */
                            /* 0200 */  0x9C, 0x07, 0x84, 0x27, 0x07, 0x76, 0x80, 0xC0,  /* ...'.v.. */
                            /* 0208 */  0x1C, 0x48, 0x80, 0xC9, 0xF9, 0x02, 0x77, 0x28,  /* .H....w( */
                            /* 0210 */  0xF0, 0x10, 0xF8, 0x00, 0x1E, 0x25, 0xCE, 0xD1,  /* .....%.. */
                            /* 0218 */  0x4A, 0x67, 0x86, 0x3C, 0xB9, 0x80, 0x2D, 0xFB,  /* Jg.<..-. */
                            /* 0220 */  0x1B, 0x40, 0x07, 0x0F, 0xE7, 0x06, 0x91, 0x8D,  /* .@...... */
                            /* 0228 */  0x57, 0x80, 0x09, 0x74, 0x38, 0xB1, 0x1E, 0x20,  /* W..t8..  */
                            /* 0230 */  0x4D, 0x14, 0x0C, 0x04, 0xD3, 0xD3, 0x6B, 0x00,  /* M.....k. */
                            /* 0238 */  0x3E, 0x15, 0x38, 0x37, 0x89, 0x92, 0x0F, 0x8C,  /* >.87.... */
                            /* 0240 */  0xC2, 0x39, 0xEB, 0x79, 0x84, 0x82, 0x18, 0xD0,  /* .9.y.... */
                            /* 0248 */  0x41, 0x20, 0xE4, 0xE4, 0xA0, 0x80, 0x3A, 0xAA,  /* A ....:. */
                            /* 0250 */  0xF8, 0x3C, 0x72, 0xAA, 0x0F, 0x3D, 0x9E, 0x94,  /* .<r..=.. */
                            /* 0258 */  0x47, 0xE1, 0xAB, 0x8A, 0x0F, 0x21, 0x3E, 0x4F,  /* G....!>O */
                            /* 0260 */  0x78, 0xF4, 0x3E, 0x29, 0xF0, 0xEF, 0x8C, 0xAF,  /* x.>).... */
                            /* 0268 */  0x0E, 0x46, 0xB7, 0x9A, 0xE3, 0x0A, 0x0A, 0xCC,  /* .F...... */
                            /* 0270 */  0x67, 0x11, 0x4E, 0x50, 0xD7, 0x6D, 0x01, 0xFA,  /* g.NP.m.. */
                            /* 0278 */  0x29, 0xE0, 0x08, 0x3C, 0x94, 0x77, 0x92, 0xC7,  /* )..<.w.. */
                            /* 0280 */  0x90, 0x04, 0xF5, 0x9D, 0x16, 0x40, 0x01, 0xE4,  /* .....@.. */
                            /* 0288 */  0x9B, 0x81, 0x4F, 0x02, 0x21, 0xFE, 0xFF, 0x4F,  /* ..O.!..O */
                            /* 0290 */  0x07, 0x1E, 0xC3, 0xC3, 0x80, 0xD1, 0x8C, 0xCE,  /* ........ */
                            /* 0298 */  0xC3, 0x4F, 0x16, 0x15, 0x77, 0xB2, 0x14, 0xC4,  /* .O..w... */
                            /* 02A0 */  0x93, 0x75, 0x94, 0xC9, 0xA2, 0x67, 0xE2, 0xAB,  /* .u...g.. */
                            /* 02A8 */  0x85, 0x27, 0x74, 0x4A, 0x41, 0xCE, 0xD1, 0x13,  /* .'tJA... */
                            /* 02B0 */  0xF6, 0x55, 0x04, 0xD6, 0xF9, 0x20, 0xE4, 0x8B,  /* .U... .. */
                            /* 02B8 */  0x81, 0xA7, 0x61, 0x38, 0x4F, 0x96, 0xC3, 0x79,  /* ..a8O..y */
                            /* 02C0 */  0xB2, 0x7C, 0x2C, 0xBE, 0x6A, 0xC0, 0x1F, 0x2D,  /* .|,.j..- */
                            /* 02C8 */  0x96, 0xA0, 0xC0, 0xD9, 0x82, 0x1C, 0x1E, 0x13,  /* ........ */
                            /* 02D0 */  0x6F, 0x54, 0xF4, 0x46, 0xE4, 0xE1, 0xF1, 0xCB,  /* oT.F.... */
                            /* 02D8 */  0x81, 0xE7, 0xF3, 0x8C, 0x70, 0x94, 0x6F, 0x12,  /* ....p.o. */
                            /* 02E0 */  0x38, 0x8C, 0xC7, 0x12, 0x0F, 0xD1, 0x97, 0x23,  /* 8......# */
                            /* 02E8 */  0x58, 0x13, 0x39, 0x69, 0xDF, 0x16, 0x4E, 0x36,  /* X.9i..N6 */
                            /* 02F0 */  0xE8, 0x4B, 0x10, 0xBB, 0x1C, 0x01, 0xBF, 0x88,  /* .K...... */
                            /* 02F8 */  0x26, 0x86, 0xC1, 0x22, 0x2D, 0x45, 0x11, 0x17,  /* &.."-E.. */
                            /* 0300 */  0x45, 0x61, 0x7C, 0xC5, 0x82, 0xFD, 0xFF, 0xBF,  /* Ea|..... */
                            /* 0308 */  0x62, 0x01, 0x16, 0x04, 0x0F, 0x1B, 0x34, 0x87,  /* b.....4. */
                            /* 0310 */  0x83, 0x97, 0x1E, 0x36, 0x6B, 0x38, 0x07, 0x99,  /* ...6k8.. */
                            /* 0318 */  0xD3, 0xF1, 0x48, 0x4E, 0x1B, 0xC6, 0x1D, 0x0B,  /* ..HN.... */
                            /* 0320 */  0xFE, 0x9D, 0xEA, 0xA9, 0xCA, 0xD3, 0x8A, 0xF2,  /* ........ */
                            /* 0328 */  0x64, 0xF5, 0x7A, 0xE5, 0x63, 0x96, 0xA1, 0xCE,  /* d.z.c... */
                            /* 0330 */  0xE0, 0x1D, 0xCB, 0xB7, 0x3C, 0x4F, 0x21, 0x4A,  /* ....<O!J */
                            /* 0338 */  0x9C, 0x97, 0x2D, 0x76, 0xC7, 0x32, 0x48, 0x50,  /* ..-v.2HP */
                            /* 0340 */  0x23, 0x3F, 0x68, 0x31, 0x94, 0xE0, 0xF1, 0xDE,  /* #?h1.... */
                            /* 0348 */  0xB1, 0x00, 0x6F, 0xFF, 0xFF, 0x3B, 0x16, 0x60,  /* ..o..;.` */
                            /* 0350 */  0xFC, 0x04, 0xC1, 0x09, 0x7C, 0xC7, 0x02, 0x1C,  /* ....|... */
                            /* 0358 */  0xC5, 0x7E, 0x37, 0xE8, 0x4A, 0x45, 0xEE, 0x58,  /* .~7.JE.X */
                            /* 0360 */  0x28, 0x0E, 0xAB, 0xB9, 0x63, 0x41, 0x9C, 0x28,  /* (...cA.( */
                            /* 0368 */  0xE6, 0x8A, 0x05, 0x86, 0xFF, 0xFF, 0x15, 0x0B,  /* ........ */
                            /* 0370 */  0xE0, 0x75, 0xC0, 0x2B, 0x16, 0x68, 0xFE, 0xFF,  /* .u.+.h.. */
                            /* 0378 */  0x57, 0x2C, 0xF0, 0x5E, 0x8E, 0x80, 0xDF, 0x09,  /* W,.^.... */
                            /* 0380 */  0xD1, 0x77, 0x0D, 0x7E, 0x9A, 0xB6, 0xA2, 0xBB,  /* .w.~.... */
                            /* 0388 */  0x06, 0x94, 0x19, 0xBE, 0x07, 0xF9, 0xB0, 0x13,  /* ........ */
                            /* 0390 */  0x2C, 0xD2, 0xA3, 0x8D, 0x6F, 0x49, 0xE1, 0x7C,  /* ,...oI.| */
                            /* 0398 */  0xDB, 0x00, 0xD8, 0xF2, 0xFF, 0xBF, 0x6D, 0x00,  /* ......m. */
                            /* 03A0 */  0x4C, 0x19, 0xBF, 0x6F, 0x1B, 0xC0, 0x4F, 0xA1,  /* L..o..O. */
                            /* 03A8 */  0x4D, 0x9F, 0x1A, 0x8D, 0x5A, 0x35, 0x28, 0x53,  /* M...Z5(S */
                            /* 03B0 */  0xA3, 0x4C, 0x83, 0x5A, 0x7D, 0x2A, 0x35, 0x66,  /* .L.Z}*5f */
                            /* 03B8 */  0x4C, 0xC9, 0xC1, 0xCE, 0x77, 0x0C, 0x2A, 0x6C,  /* L...w.*l */
                            /* 03C0 */  0x65, 0x1A, 0x9A, 0x63, 0x81, 0xD0, 0x10, 0xC7,  /* e..c.... */
                            /* 03C8 */  0x26, 0x19, 0x01, 0x51, 0x22, 0x10, 0x01, 0x59,  /* &..Q"..Y */
                            /* 03D0 */  0xFD, 0x6F, 0x42, 0x40, 0xCE, 0x02, 0x22, 0x20,  /* .oB@.."  */
                            /* 03D8 */  0x2B, 0x58, 0x9A, 0xC0, 0x9D, 0xFF, 0xD8, 0x28,  /* +X.....( */
                            /* 03E0 */  0x40, 0xA2, 0x02, 0x84, 0x29, 0x7D, 0x93, 0x09,  /* @...)}.. */
                            /* 03E8 */  0xD4, 0xB2, 0x41, 0x04, 0xF4, 0xFF, 0x3F, 0x42,  /* ..A...?B */
                            /* 03F0 */  0xD9, 0x00, 0x62, 0x82, 0x41, 0x04, 0x64, 0x91,  /* ..b.A.d. */
                            /* 03F8 */  0x3E, 0x80, 0x98, 0x62, 0x10, 0x01, 0x59, 0xDD,  /* >..b..Y. */
                            /* 0400 */  0xA3, 0x40, 0x40, 0xD6, 0x0A, 0x22, 0x20, 0xFF,  /* .@@.." . */
                            /* 0408 */  0xFF, 0x01                                       /* .. */
                        })
                    }

                    Device (PWRB)
                    {
                        Name (_HID, EisaId ("PNP0C0C") /* Power Button Device */)  // _HID: Hardware ID
                    }

                    Device (SLPB)
                    {
                        Name (_HID, EisaId ("PNP0C0E") /* Sleep Button Device */)  // _HID: Hardware ID
                        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                        {
                            Return (Package (0x02)
                            {
                                0x17, 
                                0x03
                            })
                        }

                        Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                        {
                        }
                    }

                    Device (WBTN)
                    {
                        Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                        {
                            Return ("MSFT9000")
                        }

                        Name (_CID, "PNP0C40" /* Standard Button Controller */)  // _CID: Compatible ID
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If ((OSYS <= 0x07D9) || (TSMT == Zero))
                            {
                                Return (Zero)
                            }

                            Return (0x0F)
                        }
                    }

                    Device (LSID)
                    {
                        Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                        {
                            Return ("MSFT9001")
                        }

                        Name (_CID, "PNP0C60" /* Display Sensor Device */)  // _CID: Compatible ID
                        Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                        {
                        })
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If ((OSYS <= 0x07D9) || (TSMT == Zero))
                            {
                                Return (Zero)
                            }

                            Return (0x0F)
                        }
                    }
                }

                Scope (^^PCI0)
                {
                    Name (EBRL, 0x64)
                    Name (EBRV, Zero)
                    Name (IBCL, Package (0x12)
                    {
                        0x64, 
                        0x23, 
                        0x05, 
                        0x0A, 
                        0x14, 
                        0x19, 
                        0x1E, 
                        0x23, 
                        0x28, 
                        0x2D, 
                        0x32, 
                        0x37, 
                        0x3C, 
                        0x41, 
                        0x46, 
                        0x50, 
                        0x5A, 
                        0x64
                    })
                    Method (IBCM, 1, NotSerialized)
                    {
                        EBRL = Arg0
                        If (EBRL < (DerefOf (IBCL [0x02]) + One))
                        {
                            BRNS = Zero
                        }
                        ElseIf (EBRL < (DerefOf (IBCL [0x03]) + One))
                        {
                            BRNS = One
                        }
                        ElseIf (EBRL < (DerefOf (IBCL [0x04]) + One))
                        {
                            BRNS = 0x02
                        }
                        ElseIf (EBRL < (DerefOf (IBCL [0x05]) + One))
                        {
                            BRNS = 0x03
                        }
                        ElseIf (EBRL < (DerefOf (IBCL [0x06]) + One))
                        {
                            BRNS = 0x04
                        }
                        ElseIf (EBRL < (DerefOf (IBCL [0x07]) + One))
                        {
                            BRNS = 0x05
                        }
                        ElseIf (EBRL < (DerefOf (IBCL [0x08]) + One))
                        {
                            BRNS = 0x06
                        }
                        ElseIf (EBRL < (DerefOf (IBCL [0x09]) + One))
                        {
                            BRNS = 0x07
                        }
                        ElseIf (EBRL < (DerefOf (IBCL [0x0A]) + One))
                        {
                            BRNS = 0x08
                        }
                        ElseIf (EBRL < (DerefOf (IBCL [0x0B]) + One))
                        {
                            BRNS = 0x09
                        }
                        ElseIf (EBRL < (DerefOf (IBCL [0x0C]) + One))
                        {
                            BRNS = 0x0A
                        }
                        ElseIf (EBRL < (DerefOf (IBCL [0x0D]) + One))
                        {
                            BRNS = 0x0B
                        }
                        ElseIf (EBRL < (DerefOf (IBCL [0x0E]) + One))
                        {
                            BRNS = 0x0C
                        }
                        ElseIf (EBRL < (DerefOf (IBCL [0x0F]) + One))
                        {
                            BRNS = 0x0D
                        }
                        ElseIf (EBRL < (DerefOf (IBCL [0x10]) + One))
                        {
                            BRNS = 0x0E
                        }
                        ElseIf (EBRL < (DerefOf (IBCL [0x11]) + One))
                        {
                            BRNS = 0x0F
                        }

                        If (OSYS >= 0x07D6)
                        {
                            UCMS (0x14)
                        }

                        If (IGDS)
                        {
                            UCMS (0x06)
                            BRTL = DerefOf (PNLS [BRNS])
                            ISBC (DerefOf (PNLS [BRNS]))
                        }
                        ElseIf (EBRV != BRNS)
                        {
                            UCMS (0x06)
                        }

                        EBRV = BRNS /* \BRNS */
                    }

                    Method (ISBC, 1, NotSerialized)
                    {
                        If (^GFX0.PARD ()) {}
                        Else
                        {
                            ^GFX0.BCLP = Arg0
                            ^GFX0.BCLP |= 0x80000000
                            ^GFX0.ASLC = 0x02
                            ^GFX0.ASLE = One
                        }
                    }

                    Name (PNLS, Buffer (0x10)
                    {
                        /* 0000 */  0x04, 0x07, 0x09, 0x0C, 0x10, 0x15, 0x1C, 0x25,  /* .......% */
                        /* 0008 */  0x32, 0x40, 0x50, 0x64, 0x82, 0xA5, 0xCD, 0xFF   /* 2@Pd.... */
                    })
                }

                Scope (\)
                {
                    Scope (_TZ)
                    {
                        ThermalZone (TZ01)
                        {
                            Name (PTMP, 0x0BB8)
                            Name (TMDF, 0x41)
                            Method (_SCP, 1, Serialized)  // _SCP: Set Cooling Policy
                            {
                                CTYP = Arg0
                            }

                            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
                            {
                                TMCP = (0x0AAC + (CRTT * 0x0A))
                                Return ((0x0AAC + (CRTT * 0x0A)))
                            }

                            Method (_AC0, 0, Serialized)  // _ACx: Active Cooling
                            {
                                Return (0x0EF8)
                            }

                            Method (_TMP, 0, Serialized)  // _TMP: Temperature
                            {
                                CRCP = 0x0BB8
                                If (ECON)
                                {
                                    If (DTSE >= One)
                                    {
                                        If (DTS1 >= DTS2)
                                        {
                                            Local1 = DTS1 /* \DTS1 */
                                        }
                                        Else
                                        {
                                            Local1 = DTS2 /* \DTS2 */
                                        }

                                        Local7 = (Local1 - TMDF) /* \_TZ_.TZ01.TMDF */
                                        If (Local7 < Zero)
                                        {
                                            Local7 = ~Local7
                                            Local7++
                                        }

                                        \_SB.PCI0.LPCB.EC.QTM3 = Local7
                                        Local0 = Local1
                                        If ((Local0 < 0x23) || (Local0 > 0x73))
                                        {
                                            Local0 = 0x23
                                        }
                                    }
                                    Else
                                    {
                                        Local0 = \_SB.PCI0.LPCB.EC.QTM2
                                        If ((Local0 < 0x23) || (Local0 > 0x73))
                                        {
                                            Local0 = 0x23
                                        }
                                    }

                                    CRCP = (0x0AAC + (Local0 * 0x0A))
                                }

                                If (CRCP >= TMCP)
                                {
                                    TSDL ()
                                }

                                Return (CRCP) /* \CRCP */
                            }

                            Method (_PSL, 0, Serialized)  // _PSL: Passive List
                            {
                                If (MPEN == 0x04)
                                {
                                    Return (Package (0x04)
                                    {
                                        \_PR.CPU0, 
                                        \_PR.CPU1, 
                                        \_PR.CPU2, 
                                        \_PR.CPU3
                                    })
                                }

                                If (MPEN)
                                {
                                    Return (Package (0x02)
                                    {
                                        \_PR.CPU0, 
                                        \_PR.CPU1
                                    })
                                }

                                Return (Package (0x01)
                                {
                                    \_PR.CPU0
                                })
                            }

                            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
                            {
                                Return ((0x0AAC + (PSVT * 0x0A)))
                            }

                            Method (_TC1, 0, Serialized)  // _TC1: Thermal Constant 1
                            {
                                Return (0x02)
                            }

                            Method (_TC2, 0, Serialized)  // _TC2: Thermal Constant 2
                            {
                                Return (0x03)
                            }

                            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
                            {
                                Return (0x64)
                            }
                        }
                    }

                    OperationRegion (SMI2, SystemIO, 0xB2, One)
                    Field (SMI2, ByteAcc, NoLock, Preserve)
                    {
                        APMC,   8
                    }

                    Mutex (MSMI, 0x07)
                    Method (SMI, 5, NotSerialized)
                    {
                        Acquire (MSMI, 0xFFFF)
                        CMD = Arg0
                        ERR = One
                        PAR0 = Arg1
                        PAR1 = Arg2
                        PAR2 = Arg3
                        PAR3 = Arg4
                        APMC = 0xF5
                        While (ERR == One)
                        {
                            Sleep (One)
                            APMC = 0xF5
                        }

                        Local0 = PAR0 /* \PAR0 */
                        Release (MSMI)
                        Return (Local0)
                    }

                    Method (RBEC, 1, NotSerialized)
                    {
                        Return (SMI (Zero, 0x03, Arg0, Zero, Zero))
                    }

                    Method (WBEC, 2, NotSerialized)
                    {
                        SMI (Zero, 0x04, Arg0, Arg1, Zero)
                    }

                    Method (MBEC, 3, NotSerialized)
                    {
                        SMI (Zero, 0x05, Arg0, Arg1, Arg2)
                    }

                    Method (VUPS, 0, NotSerialized)
                    {
                        SMI (One, One, Zero, Zero, Zero)
                    }

                    Method (SLPW, 1, NotSerialized)
                    {
                        SMI (One, 0x12, Zero, Zero, Zero)
                    }

                    Method (VEVT, 1, NotSerialized)
                    {
                        Return (SMI (One, 0x08, Arg0, Zero, Zero))
                    }

                    Method (VBRC, 1, NotSerialized)
                    {
                        SMI (One, 0x0A, Arg0, Zero, Zero)
                    }

                    Method (VBRD, 0, NotSerialized)
                    {
                        SMI (One, 0x0B, Zero, Zero, Zero)
                    }

                    Method (VBRU, 0, NotSerialized)
                    {
                        SMI (One, 0x0C, Zero, Zero, Zero)
                    }

                    Method (VBRS, 1, NotSerialized)
                    {
                        SMI (One, 0x0D, Arg0, Zero, Zero)
                    }

                    Method (VBRG, 0, NotSerialized)
                    {
                        Return (SMI (One, 0x0E, Zero, Zero, Zero))
                    }

                    Method (VHYB, 1, NotSerialized)
                    {
                        Return (SMI (One, 0x10, Arg0, Zero, Zero))
                    }

                    Method (VDYN, 2, NotSerialized)
                    {
                        Return (SMI (One, 0x11, Arg0, Arg1, Zero))
                    }

                    Method (UCMS, 1, NotSerialized)
                    {
                        Return (SMI (0x02, Arg0, Zero, Zero, Zero))
                    }

                    Method (BCHK, 0, NotSerialized)
                    {
                        Return (SMI (0x05, 0x04, Zero, Zero, Zero))
                    }

                    Method (BLTH, 1, NotSerialized)
                    {
                        Return (SMI (0x06, Arg0, Zero, Zero, Zero))
                    }

                    Method (PRSM, 2, NotSerialized)
                    {
                        Return (SMI (0x07, Zero, Arg0, Arg1, Zero))
                    }

                    Method (IFRS, 2, NotSerialized)
                    {
                        Return (SMI (0x07, One, Arg0, Arg1, Zero))
                    }

                    Method (ISOC, 1, NotSerialized)
                    {
                        Return (SMI (0x07, 0x03, Arg0, Zero, Zero))
                    }

                    Method (EZRC, 1, NotSerialized)
                    {
                        Return (SMI (0x07, 0x04, Arg0, Zero, Zero))
                    }

                    Method (NVSS, 1, NotSerialized)
                    {
                        Return (SMI (0x08, Arg0, Zero, Zero, Zero))
                    }

                    Method (WGSV, 1, NotSerialized)
                    {
                        Return (SMI (0x09, Arg0, Zero, Zero, Zero))
                    }

                    Method (PWON, 2, NotSerialized)
                    {
                        Return (SMI (0x09, 0x0A, Arg0, Arg1, OSYS))
                    }

                    Method (TSDL, 0, NotSerialized)
                    {
                        Return (SMI (0x0A, 0x03, Zero, Zero, Zero))
                    }

                    Method (TPHY, 1, NotSerialized)
                    {
                        SMI (0x0C, Arg0, Zero, Zero, Zero)
                    }

                    Method (TMOR, 1, NotSerialized)
                    {
                        SMI (0x0D, Arg0, Zero, Zero, Zero)
                    }

                    Method (THRO, 1, NotSerialized)
                    {
                        Return (SMI (0x0E, Arg0, Zero, Zero, Zero))
                    }

                    Method (CHFN, 2, NotSerialized)
                    {
                        Return (SMI (0x0F, Arg0, Arg1, Zero, Zero))
                    }

                    Method (WMIS, 2, NotSerialized)
                    {
                        Return (SMI (0x10, Arg0, Arg1, Zero, Zero))
                    }

                    Method (UAWS, 1, NotSerialized)
                    {
                        Return (SMI (0x13, Arg0, Zero, Zero, Zero))
                    }

                    Method (BFWC, 1, NotSerialized)
                    {
                        Return (SMI (0x14, Zero, Arg0, Zero, Zero))
                    }

                    Method (BFWP, 0, NotSerialized)
                    {
                        Return (SMI (0x14, One, Zero, Zero, Zero))
                    }

                    Method (BFWG, 1, NotSerialized)
                    {
                        SMI (0x14, 0x03, Arg0, Zero, Zero)
                    }

                    Method (BDMC, 1, NotSerialized)
                    {
                        SMI (0x14, 0x04, Arg0, Zero, Zero)
                    }

                    Method (PSIF, 2, NotSerialized)
                    {
                        Return (SMI (0x14, 0x05, Arg0, Arg1, Zero))
                    }

                    Method (FNSC, 2, NotSerialized)
                    {
                        Return (SMI (0x14, 0x06, Arg0, Arg1, Zero))
                    }

                    Method (AUDS, 2, NotSerialized)
                    {
                        Return (SMI (0x14, 0x07, Arg0, Arg1, Zero))
                    }

                    Method (SYBC, 2, NotSerialized)
                    {
                        Return (SMI (0x14, 0x08, Arg0, Arg1, Zero))
                    }

                    Method (CBIF, 2, NotSerialized)
                    {
                        Return (SMI (0x14, 0x0F, Arg0, Arg1, Zero))
                    }

                    Method (BFUD, 0, NotSerialized)
                    {
                        Return (SMI (0x14, 0x10, Zero, Zero, Zero))
                    }

                    Method (WMIQ, 2, NotSerialized)
                    {
                        Return (SMI (0x15, Arg0, Arg1, Zero, Zero))
                    }

                    Method (HBCK, 0, NotSerialized)
                    {
                        Return (SMI (0x16, Zero, Zero, Zero, Zero))
                    }

                    Method (ITDP, 0, NotSerialized)
                    {
                        Return (SMI (0x17, Zero, Zero, Zero, Zero))
                    }

                    Method (TBCT, 1, NotSerialized)
                    {
                        Return (SMI (0x18, Arg0, Zero, Zero, Zero))
                    }

                    Method (BSCA, 1, NotSerialized)
                    {
                        Return (SMI (0x03, Arg0, Zero, Zero, Zero))
                    }

                    Method (PNTF, 1, NotSerialized)
                    {
                        If (PPMF & 0x01000000)
                        {
                            If (((PDC0 & 0x08) && ((Arg0 == 0x80) || (
                                Arg0 == 0x82))) || ((PDC0 & 0x10) && (Arg0 == 0x81)))
                            {
                                Notify (\_PR.CPU0, Arg0)
                            }

                            If (((PDC1 & 0x08) && ((Arg0 == 0x80) || (
                                Arg0 == 0x82))) || ((PDC1 & 0x10) && (Arg0 == 0x81)))
                            {
                                Notify (\_PR.CPU1, Arg0)
                            }

                            If (((PDC2 & 0x08) && ((Arg0 == 0x80) || (
                                Arg0 == 0x82))) || ((PDC2 & 0x10) && (Arg0 == 0x81)))
                            {
                                Notify (\_PR.CPU2, Arg0)
                            }

                            If (((PDC3 & 0x08) && ((Arg0 == 0x80) || (
                                Arg0 == 0x82))) || ((PDC3 & 0x10) && (Arg0 == 0x81)))
                            {
                                Notify (\_PR.CPU3, Arg0)
                            }
                        }
                        ElseIf ((Arg0 == 0x80) || ((Arg0 == 0x81) || (Arg0 == 
                            0x82)))
                        {
                            Notify (\_PR.CPU0, Arg0)
                            Notify (\_PR.CPU1, Arg0)
                            Notify (\_PR.CPU2, Arg0)
                            Notify (\_PR.CPU3, Arg0)
                        }
                    }

                    OperationRegion (QNVS, SystemMemory, 0x771DC018, 0x1000)
                    Field (QNVS, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x300), 
                        WOLN,   8, 
                        BRNS,   8, 
                        ACSS,   1, 
                            ,   1, 
                            ,   1, 
                            ,   1, 
                            ,   1, 
                            ,   1, 
                            ,   1, 
                        Offset (0x303), 
                        Offset (0x304), 
                        USG0,   1, 
                        USG1,   1, 
                        USG2,   1, 
                        USG3,   1, 
                        ESG0,   1, 
                        ESG1,   1, 
                        ESG2,   1, 
                        ESG3,   1, 
                        LANO,   1, 
                            ,   1, 
                            ,   1, 
                        C4AC,   1, 
                        OSC4,   1, 
                            ,   1, 
                        SCRM,   1, 
                        ODDS,   1, 
                        BTMD,   1, 
                        WLNP,   1, 
                        WANP,   1, 
                        MCMU,   1, 
                        CMAB,   1, 
                        WOFF,   1, 
                        CMAT,   1, 
                        BTHA,   1, 
                        CBCI,   1, 
                        CWAI,   1, 
                        CBTP,   1, 
                        WWAP,   1, 
                        WANA,   1, 
                        WWNA,   1, 
                        WALA,   1, 
                        BTHG,   1, 
                            ,   1, 
                            ,   1, 
                            ,   1, 
                            ,   1, 
                        TSFP,   1, 
                        TSMT,   1, 
                        CPTD,   1, 
                        BID2,   1, 
                        Offset (0x30A), 
                        TJ90,   8, 
                        Offset (0x30C), 
                        FTPS,   8, 
                        CWAC,   1, 
                        CWAS,   1, 
                        CWUE,   1, 
                        CWUS,   1, 
                        C4NA,   1, 
                        Offset (0x30E), 
                        BFAD,   1, 
                        Offset (0x30F), 
                        Offset (0x310), 
                        Offset (0x311), 
                        Offset (0x312), 
                        Offset (0x313), 
                        Offset (0x314), 
                            ,   4, 
                        Offset (0x315), 
                        IPMS,   8, 
                        IPMB,   120, 
                        IPMR,   24, 
                        IPMO,   24, 
                        IPMA,   8, 
                        LIDX,   1, 
                        FNLS,   1, 
                        MILS,   1, 
                        MULS,   1, 
                        LKLS,   1, 
                        Offset (0x32D), 
                        SS4F,   1, 
                        Offset (0x32E), 
                        DPP0,   1, 
                        DPP1,   1, 
                        DPP2,   1, 
                        DPP3,   1, 
                        DPP4,   1, 
                        DPP5,   1, 
                        Offset (0x32F), 
                        PPCP,   8, 
                        BFWB,   296, 
                        Offset (0x360), 
                        FW00,   128, 
                        Offset (0x372), 
                        Offset (0x374), 
                        Offset (0x375), 
                        Offset (0x376), 
                        Offset (0x377), 
                        TPME,   8, 
                        TPMP,   8, 
                        TPPC,   8, 
                        TPPP,   8, 
                        TPMS,   1, 
                        Offset (0x37C), 
                        Offset (0x381), 
                            ,   1, 
                            ,   1, 
                        Offset (0x382), 
                        ISSP,   1, 
                        ISWK,   2, 
                        Offset (0x383), 
                            ,   1, 
                            ,   1, 
                        Offset (0x384), 
                        ISCG,   32, 
                        Offset (0x38A), 
                        Offset (0x38B), 
                        PNIT,   8, 
                        TMCP,   16, 
                        CRCP,   16, 
                        Offset (0x394), 
                        ECTP,   8, 
                        Offset (0x396), 
                        Offset (0x397), 
                        Offset (0x398), 
                        Offset (0x39C), 
                        Offset (0x3A0), 
                        Offset (0x3D8), 
                        BAC1,   32, 
                        BAC2,   32, 
                        MH01,   128, 
                        MH08,   128, 
                        CMD,    8, 
                        ERR,    32, 
                        PAR0,   32, 
                        PAR1,   32, 
                        PAR2,   32, 
                        PAR3,   32, 
                        Offset (0x500), 
                        IF00,   128, 
                        IF01,   128, 
                        IF02,   128, 
                        IF03,   128, 
                        IF04,   128, 
                        IF05,   128, 
                        IF06,   128, 
                        IF07,   128, 
                        IF08,   128, 
                        IF09,   128, 
                        IF0A,   128, 
                        IF0B,   128, 
                        IF0C,   128, 
                        IF0D,   128, 
                        IF0E,   128, 
                        IF0F,   128, 
                        WITM,   8, 
                        WSEL,   8, 
                        WLS0,   8, 
                        WLS1,   8, 
                        WLS2,   8, 
                        WLS3,   8, 
                        WLS4,   8, 
                        WLS5,   8, 
                        WLS6,   8, 
                        WLS7,   8, 
                        WLS8,   8, 
                        WLS9,   8, 
                        WLSA,   8, 
                        WLSB,   8, 
                        WLSC,   8, 
                        WLSD,   8, 
                        WENC,   8, 
                        WKBD,   8, 
                        WPTY,   8, 
                        WPAS,   1032, 
                        WPNW,   1032, 
                        WSPM,   8, 
                        WSPS,   8, 
                        WSMN,   8, 
                        WSMX,   8, 
                        WSEN,   8, 
                        WSKB,   8, 
                        WASB,   8, 
                        WASI,   16, 
                        WASD,   8, 
                        WASS,   32, 
                        Offset (0xC00), 
                        PEDI,   1024
                    }
                }

                Device (FWHD)
                {
                    Name (_HID, EisaId ("INT0800") /* Intel 82802 Firmware Hub Device */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        Memory32Fixed (ReadOnly,
                            0xFF000000,         // Address Base
                            0x01000000,         // Address Length
                            )
                    })
                }

                Scope (\_SB)
                {
                    Device (RTC)
                    {
                        Name (_HID, EisaId ("PNP0B00") /* AT Real-Time Clock */)  // _HID: Hardware ID
                        Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                        {
                            IO (Decode16,
                                0x0070,             // Range Minimum
                                0x0070,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                        })
                    }
                }

                Device (IPIC)
                {
                    Name (_HID, EisaId ("PNP0000") /* 8259-compatible Programmable Interrupt Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0024,             // Range Minimum
                            0x0024,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0028,             // Range Minimum
                            0x0028,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x002C,             // Range Minimum
                            0x002C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0030,             // Range Minimum
                            0x0030,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0034,             // Range Minimum
                            0x0034,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0038,             // Range Minimum
                            0x0038,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x003C,             // Range Minimum
                            0x003C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A4,             // Range Minimum
                            0x00A4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A8,             // Range Minimum
                            0x00A8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00AC,             // Range Minimum
                            0x00AC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B0,             // Range Minimum
                            0x00B0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B4,             // Range Minimum
                            0x00B4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B8,             // Range Minimum
                            0x00B8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00BC,             // Range Minimum
                            0x00BC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {2}
                    })
                }

                Device (LDRC)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, 0x02)  // _UID: Unique ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x004E,             // Range Minimum
                            0x004E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0063,             // Range Minimum
                            0x0063,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0065,             // Range Minimum
                            0x0065,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0067,             // Range Minimum
                            0x0067,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0092,             // Range Minimum
                            0x0092,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00B2,             // Range Minimum
                            0x00B2,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0680,             // Range Minimum
                            0x0680,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x0400,             // Range Minimum
                            0x0400,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x0500,             // Range Minimum
                            0x0500,             // Range Maximum
                            0x01,               // Alignment
                            0xFF,               // Length
                            )
                    })
                }

                Device (TIMR)
                {
                    Name (_HID, EisaId ("PNP0100") /* PC-class System Timer */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IO (Decode16,
                            0x0050,             // Range Minimum
                            0x0050,             // Range Maximum
                            0x10,               // Alignment
                            0x04,               // Length
                            )
                        IRQNoFlags ()
                            {0}
                    })
                }

                Device (IURT)
                {
                    Name (_HID, EisaId ("PNP0501") /* 16550A-compatible COM Serial Port */)  // _HID: Hardware ID
                    Name (_UID, One)  // _UID: Unique ID
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If (USEL == Zero)
                        {
                            UI4E = One
                            C1EN = One
                            Return (0x0F)
                        }

                        Return (Zero)
                    }

                    Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                    {
                        UI4E = Zero
                        C1EN = Zero
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Name (BUF0, ResourceTemplate ()
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {4}
                        })
                        Return (BUF0) /* \_SB_.PCI0.LPCB.IURT._CRS.BUF0 */
                    }
                }

                OperationRegion (PKBS, SystemIO, 0x60, 0x05)
                Field (PKBS, ByteAcc, Lock, Preserve)
                {
                    PKBD,   8, 
                    Offset (0x02), 
                    Offset (0x03), 
                    Offset (0x04), 
                    PKBC,   8
                }

                Device (PS2K)
                {
                    Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                    {
                        If (OSYS >= 0x07DC)
                        {
                            Return (0x01006636)
                        }

                        Return (0x0303D041)
                    }

                    Name (_CID, EisaId ("PNP0303") /* IBM Enhanced Keyboard (101/102-key, PS/2 Mouse) */)  // _CID: Compatible ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {1}
                    })
                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            FixedIO (
                                0x0060,             // Address
                                0x01,               // Length
                                )
                            FixedIO (
                                0x0064,             // Address
                                0x01,               // Length
                                )
                            IRQNoFlags ()
                                {1}
                        }
                        EndDependentFn ()
                    })
                }

                Device (PS2M)
                {
                    Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                    {
                        If (TSMT == Zero)
                        {
                            Return (0x4020AE30)
                        }

                        Return (0x4120AE30)
                    }

                    Name (_CID, EisaId ("PNP0F13") /* PS/2 Mouse */)  // _CID: Compatible ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {12}
                    })
                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IRQNoFlags ()
                                {12}
                        }
                        EndDependentFn ()
                    })
                }
            }
        }
    }

    Scope (\)
    {
        OperationRegion (PMIO, SystemIO, PMBS, 0x46)
        Field (PMIO, ByteAcc, NoLock, Preserve)
        {
            Offset (0x01), 
            PWBS,   1, 
            Offset (0x20), 
                ,   13, 
            PMEB,   1, 
            Offset (0x42), 
                ,   1, 
            GPEC,   1
        }

        Field (PMIO, ByteAcc, NoLock, WriteAsZeros)
        {
            Offset (0x20), 
                ,   4, 
            PSCI,   1, 
            SCIS,   1, 
                ,   17, 
            GP23,   1
        }

        OperationRegion (PMCR, SystemMemory, PMCB, 0x0100)
        Field (PMCR, DWordAcc, Lock, Preserve)
        {
            Offset (0x34), 
            L10D,   1, 
            L11D,   1, 
            L12D,   1, 
            L13D,   1, 
            L14D,   1, 
            L15D,   1, 
            L16D,   1, 
            L17D,   1, 
            SD1D,   1, 
            SD2D,   1, 
            SD3D,   1, 
                ,   1, 
                ,   1, 
            LPED,   1, 
            OTGD,   1, 
            Offset (0x36), 
                ,   1, 
                ,   1, 
                ,   1, 
                ,   1, 
            RP1D,   1, 
            RP2D,   1, 
            RP3D,   1, 
            RP4D,   1, 
            L20D,   1, 
            L21D,   1, 
            L22D,   1, 
            L23D,   1, 
            L24D,   1, 
            L25D,   1, 
            L26D,   1, 
            L27D,   1, 
                ,   1, 
                ,   1, 
                ,   1, 
                ,   1, 
            ISHD,   1, 
            Offset (0x3C), 
            Offset (0x60), 
            CKC0,   2, 
            CKF0,   1, 
            Offset (0x64), 
            CKC1,   2, 
            CKF1,   1, 
            Offset (0x68), 
            CKC2,   2, 
            CKF2,   1, 
            Offset (0x6C), 
            CKC3,   2, 
            CKF3,   1, 
            Offset (0x70), 
            CKC4,   2, 
            CKF4,   1, 
            Offset (0x74), 
            CKC5,   2, 
            CKF5,   1, 
            Offset (0x78), 
            Offset (0xA0), 
            PMCD,   32, 
            Offset (0xC0), 
                ,   14, 
            XPME,   1, 
            Offset (0xEC), 
            PMCC,   32
        }

        OperationRegion (PPSC, SystemMemory, (PMCB + 0xA0), 0x08)
        Field (PPSC, DWordAcc, Lock, Preserve)
        {
            DM1P,   1, 
            PW1P,   1, 
            PW2P,   1, 
            UR1P,   1, 
            UR2P,   1, 
            SP1P,   1, 
            SP2P,   1, 
            SP3P,   1, 
            EMMP,   1, 
            SDI1,   1, 
            SDI2,   1, 
                ,   2, 
            LPEP,   1, 
                ,   1, 
            Offset (0x02), 
                ,   1, 
            SATP,   1, 
            USBP,   1, 
            SECP,   1, 
            PRP1,   1, 
            PRP2,   1, 
            PRP3,   1, 
            PRP4,   1, 
            DM2P,   1, 
            IC1P,   1, 
            IC2P,   1, 
            IC3P,   1, 
            IC4P,   1, 
            IC5P,   1, 
            IC6P,   1, 
            IC7P,   1, 
                ,   2, 
            ISHP,   1, 
            Offset (0x08)
        }
    }

    Scope (_SB.PCI0)
    {
        Device (SATA)
        {
            Name (_ADR, 0x00130000)  // _ADR: Address
            OperationRegion (SATR, PCI_Config, 0x74, 0x04)
            Field (SATR, WordAcc, NoLock, Preserve)
            {
                Offset (0x01), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
            }
        }

        Scope (\_SB)
        {
            PowerResource (USBC, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                }
            }
        }

        Device (XHC1)
        {
            Name (_ADR, 0x00140000)  // _ADR: Address
            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x0D, 
                0x03
            })
            Name (_S3D, 0x02)  // _S3D: S3 Device State
            Name (_S4D, 0x02)  // _S4D: S4 Device State
            Name (XFLT, Zero)
            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PMEB = One
            }

            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                ESG2 = Arg0
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (Arg0 == ToUUID ("ac340cb7-e901-45bf-b7e6-2b34ec931e23"))
                {
                    If (Arg1 == 0x03)
                    {
                        XFLT = Arg1
                    }
                }
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If (_OSI ("Android"))
                {
                    Return (0x03)
                }

                If (XFLT == Zero)
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x03)
                }
            }

            OperationRegion (USBR, PCI_Config, Zero, 0x98)
            Field (USBR, WordAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                BAR0,   32, 
                Offset (0x74), 
                Offset (0x75), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1
            }

            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
            {
                Return (Zero)
            }

            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
            {
                Return (Package (0x01)
                {
                    USBC
                })
            }

            Device (RHUB)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (HS01)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.HS01._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                /* 0008 */  0x61, 0x0C, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00   /* a....... */
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.HS01._PLD.PLDP */
                    }
                }

                Device (HS02)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.HS02._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                /* 0008 */  0x61, 0x0C, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00   /* a....... */
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.HS02._PLD.PLDP */
                    }
                }

                Device (HS03)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.HS03._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                /* 0008 */  0x30, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* 0....... */
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           /* .... */
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.HS03._PLD.PLDP */
                    }

                    Device (WCAM)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                Zero, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.HS03.WCAM._UPC.UPCP */
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x14)
                                {
                                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                    /* 0008 */  0x24, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* $....... */
                                    /* 0010 */  0xC8, 0x00, 0xA0, 0x00                           /* .... */
                                }
                            })
                            Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.HS03.WCAM._PLD.PLDP */
                        }
                    }
                }

                Device (HS04)
                {
                    Name (_ADR, 0x04)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.HS04._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        If ((BDID == CHRB) | (BDID == CIRB))
                        {
                            Name (PLDQ, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                    /* 0008 */  0x61, 0x0C, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00   /* a....... */
                                }
                            })
                            Return (PLDQ) /* \_SB_.PCI0.XHC1.RHUB.HS04._PLD.PLDQ */
                        }

                        If ((BDID != CHRB) & (BDID != CIRB))
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                    /* 0008 */  0x60, 0x0C, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00   /* `....... */
                                }
                            })
                            Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.HS04._PLD.PLDP */
                        }
                    }
                }

                Device (HS05)
                {
                    Name (_ADR, 0x05)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.HS05._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                /* 0008 */  0x60, 0x0C, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00   /* `....... */
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.HS05._PLD.PLDP */
                    }
                }

                Device (HS06)
                {
                    Name (_ADR, 0x06)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.HS06._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                /* 0008 */  0x60, 0x0C, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00   /* `....... */
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.HS06._PLD.PLDP */
                    }
                }

                Device (HS07)
                {
                    Name (_ADR, 0x07)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.HS07._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                /* 0008 */  0x60, 0x0C, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00   /* `....... */
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.HS07._PLD.PLDP */
                    }
                }

                Device (SSP1)
                {
                    Name (_ADR, 0x08)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.SSP1._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                /* 0008 */  0x61, 0x0C, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00   /* a....... */
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.SSP1._PLD.PLDP */
                    }
                }

                Device (SSP2)
                {
                    Name (_ADR, 0x09)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.SSP2._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                /* 0008 */  0x61, 0x0C, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00   /* a....... */
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.SSP2._PLD.PLDP */
                    }
                }

                Device (SSP3)
                {
                    Name (_ADR, 0x0A)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            Zero, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.SSP3._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                /* 0008 */  0x30, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* 0....... */
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           /* .... */
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.SSP3._PLD.PLDP */
                    }

                    Device (WCAM)
                    {
                        Name (_ADR, 0x0A)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                Zero, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.SSP3.WCAM._UPC.UPCP */
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x14)
                                {
                                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                    /* 0008 */  0x24, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* $....... */
                                    /* 0010 */  0xC8, 0x00, 0xA0, 0x00                           /* .... */
                                }
                            })
                            Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.SSP3.WCAM._PLD.PLDP */
                        }
                    }
                }

                Device (SSP4)
                {
                    Name (_ADR, 0x0B)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.SSP4._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        If ((BDID == CHRB) | (BDID == CIRB))
                        {
                            Name (PLDQ, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                    /* 0008 */  0x61, 0x0C, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00   /* a....... */
                                }
                            })
                            Return (PLDQ) /* \_SB_.PCI0.XHC1.RHUB.SSP4._PLD.PLDQ */
                        }

                        If ((BDID != CHRB) & (BDID != CIRB))
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                    /* 0008 */  0x60, 0x0C, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00   /* `....... */
                                }
                            })
                            Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.SSP4._PLD.PLDP */
                        }
                    }
                }

                Device (SSP5)
                {
                    Name (_ADR, 0x0C)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.SSP5._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                /* 0008 */  0x60, 0x0C, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00   /* `....... */
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.SSP5._PLD.PLDP */
                    }
                }

                Device (SSP6)
                {
                    Name (_ADR, 0x0D)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.SSP6._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                /* 0008 */  0x60, 0x0C, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00   /* `....... */
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.SSP6._PLD.PLDP */
                    }
                }
            }
        }

        Device (SDHA)
        {
            Name (_HID, "80860F14" /* Intel Baytrail SDIO/MMC Host Controller */)  // _HID: Hardware ID
            Name (_CID, "PNP0D40" /* SDA Standard Compliant SD Host Controller */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) eMMC Controller - 80862294")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y04)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002D,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.SDHA._Y04._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.SDHA._Y04._LEN, B0LN)  // _LEN: Length
                B0BA = EM0A /* \EM0A */
                B0LN = EM0L /* \EM0L */
                Return (RBUF) /* \_SB_.PCI0.SDHA.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((EM0A == Zero) || (SD1D == One))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, EM1A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
            }

            Device (EMMD)
            {
                Name (_ADR, 0x08)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }
            }
        }

        Device (PEMC)
        {
            Name (_ADR, 0x00100000)  // _ADR: Address
            OperationRegion (SDIO, PCI_Config, 0x84, 0x04)
            Field (SDIO, WordAcc, NoLock, Preserve)
            {
                Offset (0x01), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((EM0A == Zero) && (SD1D == Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
            }

            Device (CARD)
            {
                Name (_ADR, 0x08)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }
            }
        }

        Device (GDM1)
        {
            Name (_HID, "INTL9C60" /* Intel Baytrail SOC DMA Controller */)  // _HID: Hardware ID
            Name (_DDN, "Intel(R) DMA Controller #1 - INTL9C60")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    _Y05)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002A,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.GDM1._Y05._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.GDM1._Y05._LEN, B0LN)  // _LEN: Length
                B0BA = D10A /* \D10A */
                B0LN = D10L /* \D10L */
                Return (RBUF) /* \_SB_.PCI0.GDM1.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (OSYS <= 0x07D9)
                {
                    Return (Zero)
                }

                If ((D10A == Zero) || (L10D == One))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                If (DM1P == Zero)
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x03)
                }
            }
        }

        Device (GDM3)
        {
            Name (_HID, "INTL9C60" /* Intel Baytrail SOC DMA Controller */)  // _HID: Hardware ID
            Name (_DDN, "Intel(R) DMA Controller #2 - INTL9C60")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    _Y06)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002B,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.GDM3._Y06._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.GDM3._Y06._LEN, B0LN)  // _LEN: Length
                B0BA = D20A /* \D20A */
                B0LN = D20L /* \D20L */
                Return (RBUF) /* \_SB_.PCI0.GDM3.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (OSYS <= 0x07D9)
                {
                    Return (Zero)
                }

                If ((D20A == Zero) || (L20D == One))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                If (DM2P == Zero)
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x03)
                }
            }
        }

        Device (PWM1)
        {
            Name (_HID, "80862288")  // _HID: Hardware ID
            Name (_CID, "80862288")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) PWM Controller #1 - 80862288")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y07)
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.PWM1._Y07._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.PWM1._Y07._LEN, B0LN)  // _LEN: Length
                B0BA = P10A /* \P10A */
                B0LN = P10L /* \P10L */
                Return (RBUF) /* \_SB_.PCI0.PWM1.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((P10A == Zero) || (L11D == One))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, P11A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }
        }

        Device (PWM2)
        {
            Name (_HID, "80862288")  // _HID: Hardware ID
            Name (_CID, "80862288")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) PWM Controller #2 - 80862289")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y08)
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.PWM2._Y08._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.PWM2._Y08._LEN, B0LN)  // _LEN: Length
                B0BA = P20A /* \P20A */
                B0LN = P20L /* \P20L */
                Return (RBUF) /* \_SB_.PCI0.PWM2.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((P20A == Zero) || (L12D == One))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, P21A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }
        }

        Device (URT1)
        {
            Name (_HID, "8086228A")  // _HID: Hardware ID
            Name (_CID, "8086228A")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) HS-UART Controller #1 - 8086228A")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y09)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000027,
                }
                FixedDMA (0x0002, 0x0002, Width32bit, )
                FixedDMA (0x0003, 0x0003, Width32bit, )
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.URT1._Y09._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.URT1._Y09._LEN, B0LN)  // _LEN: Length
                B0BA = U10A /* \U10A */
                B0LN = U10L /* \U10L */
                Return (RBUF) /* \_SB_.PCI0.URT1.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (OSYS <= 0x07D9)
                {
                    Return (Zero)
                }

                If ((U10A == Zero) || (L13D == One))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, U11A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Device (BTH0)
            {
                Name (_HID, "BCM2E1A")  // _HID: Hardware ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Android") & (BDID != CHRB))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (UBUF, ResourceTemplate ()
                    {
                        UartSerialBusV2 (0x0001C200, DataBitsEight, StopBitsOne,
                            0xFC, LittleEndian, ParityTypeNone, FlowControlNone,
                            0x0020, 0x0020, "\\_SB.PCIO.URT1",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO3", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x003E
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO3", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0040
                            }
                        GpioInt (Level, ActiveHigh, Exclusive, PullNone, 0x0000,
                            "\\_SB.GPO3", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x003C
                            }
                    })
                    Return (UBUF) /* \_SB_.PCI0.URT1.BTH0._CRS.UBUF */
                }
            }

            Device (BTH1)
            {
                Name (_HID, "BCM2E64")  // _HID: Hardware ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Android") | (BDID == CHRB))
                    {
                        Return (Zero)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (BBUF, ResourceTemplate ()
                    {
                        UartSerialBusV2 (0x0001C200, DataBitsEight, StopBitsOne,
                            0xFC, LittleEndian, ParityTypeNone, FlowControlNone,
                            0x0020, 0x0020, "\\_SB.PCI0.URT1",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioInt (Level, ActiveLow, Exclusive, PullNone, 0x0000,
                            "\\_SB.GPO3", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x003C
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO3", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x003E
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO3", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0040
                            }
                    })
                    Return (BBUF) /* \_SB_.PCI0.URT1.BTH1._CRS.BBUF */
                }
            }
        }

        Device (URT2)
        {
            Name (_HID, "8086228A")  // _HID: Hardware ID
            Name (_CID, "8086228A")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) HS-UART Controller #2 - 8086228C")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y0A)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000028,
                }
                FixedDMA (0x0004, 0x0004, Width32bit, )
                FixedDMA (0x0005, 0x0005, Width32bit, )
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.URT2._Y0A._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.URT2._Y0A._LEN, B0LN)  // _LEN: Length
                B0BA = U20A /* \U20A */
                B0LN = U20L /* \U20L */
                Return (RBUF) /* \_SB_.PCI0.URT2.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (OSYS <= 0x07D9)
                {
                    Return (Zero)
                }

                If ((U20A == Zero) || (L14D == One))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, U21A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Device (GPS0)
            {
                Name (_HID, "BCM4752")  // _HID: Hardware ID
                Name (_HRV, Zero)  // _HRV: Hardware Revision
                Name (UART, One)
                Name (ENAB, Zero)
                Name (HSTW, One)
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Android") & (BDID != CHRB))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (UBUF, ResourceTemplate ()
                    {
                        UartSerialBusV2 (0x0001C200, DataBitsEight, StopBitsOne,
                            0xFC, LittleEndian, ParityTypeNone, FlowControlHardware,
                            0x0020, 0x0020, "\\_SB.PCI0.URT2",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioInt (Level, ActiveHigh, Exclusive, PullNone, 0x0000,
                            "\\_SB.GPO3", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0007
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO3", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0003
                            }
                    })
                    Name (RBUF, ResourceTemplate ()
                    {
                        UartSerialBusV2 (0x0001C200, DataBitsEight, StopBitsOne,
                            0xFC, LittleEndian, ParityTypeNone, FlowControlHardware,
                            0x0020, 0x0020, "\\_SB.PCI0.URT2",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioInt (Level, ActiveHigh, Exclusive, PullNone, 0x0000,
                            "\\_SB.GPO3", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0007
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0003
                            }
                    })
                    If (BDID == CRRB)
                    {
                        Return (RBUF) /* \_SB_.PCI0.URT2.GPS0._CRS.RBUF */
                    }

                    Return (UBUF) /* \_SB_.PCI0.URT2.GPS0._CRS.UBUF */
                }
            }

            Device (GPS1)
            {
                Name (_HID, "BCM4752")  // _HID: Hardware ID
                Name (_HRV, One)  // _HRV: Hardware Revision
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Android") | (BDID == CHRB))
                    {
                        Return (Zero)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (BBUF, ResourceTemplate ()
                    {
                        UartSerialBusV2 (0x0001C200, DataBitsEight, StopBitsOne,
                            0xFC, LittleEndian, ParityTypeNone, FlowControlHardware,
                            0x0020, 0x0020, "\\_SB.PCI0.URT2",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO3", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0003
                            }
                    })
                    Name (CBUF, ResourceTemplate ()
                    {
                        UartSerialBusV2 (0x0001C200, DataBitsEight, StopBitsOne,
                            0xFC, LittleEndian, ParityTypeNone, FlowControlHardware,
                            0x0020, 0x0020, "\\_SB.PCI0.URT2",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0003
                            }
                    })
                    If (BDID == CRRB)
                    {
                        Return (CBUF) /* \_SB_.PCI0.URT2.GPS1._CRS.CBUF */
                    }

                    Return (BBUF) /* \_SB_.PCI0.URT2.GPS1._CRS.BBUF */
                }
            }
        }

        Device (SPI1)
        {
            Name (_HID, "8086228E")  // _HID: Hardware ID
            Name (_CID, "8086228E")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) SPI Controller #1 - 8086228E")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y0B)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000029,
                }
                FixedDMA (0x0000, 0x0000, Width32bit, )
                FixedDMA (0x0001, 0x0001, Width32bit, )
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.SPI1._Y0B._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.SPI1._Y0B._LEN, B0LN)  // _LEN: Length
                B0BA = SP0A /* \SP0A */
                B0LN = SP0L /* \SP0L */
                Return (RBUF) /* \_SB_.PCI0.SPI1.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((SP0A == Zero) || (L15D == One))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, SP1A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Device (FPNT)
            {
                Name (_HID, "AUTH2750" /* AuthenTec AES2750 */)  // _HID: Hardware ID
                Name (_DDN, "AuthenTec AES2750")  // _DDN: DOS Device Name
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (UBUF, ResourceTemplate ()
                    {
                        SpiSerialBusV2 (0x0001, PolarityLow, FourWireMode, 0x08,
                            ControllerInitiated, 0x007A1200, ClockPolarityLow,
                            ClockPhaseSecond, "\\_SB.PCI0.SPI1",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                        {
                            0x00000048,
                        }
                    })
                    Return (UBUF) /* \_SB_.PCI0.SPI1.FPNT._CRS.UBUF */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (Zero)
                }
            }
        }

        Device (SPI2)
        {
            Name (_HID, "8086228E")  // _HID: Hardware ID
            Name (_CID, "8086228E")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) SPI Controller #2 - 80862290")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y0C)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000059,
                }
                FixedDMA (0x0006, 0x0006, Width32bit, )
                FixedDMA (0x0007, 0x0007, Width32bit, )
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.SPI2._Y0C._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.SPI2._Y0C._LEN, B0LN)  // _LEN: Length
                B0BA = S20A /* \S20A */
                B0LN = S20L /* \S20L */
                Return (RBUF) /* \_SB_.PCI0.SPI2.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((S20A == Zero) || (L16D == One))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, S21A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }
        }

        Device (SPI3)
        {
            Name (_HID, "8086228E")  // _HID: Hardware ID
            Name (_CID, "8086228E")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) SPI Controller #3 - 808622AC")  // _DDN: DOS Device Name
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y0D)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000005A,
                }
                FixedDMA (0x0008, 0x0008, Width32bit, )
                FixedDMA (0x0009, 0x0009, Width32bit, )
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.SPI3._Y0D._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.SPI3._Y0D._LEN, B0LN)  // _LEN: Length
                B0BA = S30A /* \S30A */
                B0LN = S30L /* \S30L */
                Return (RBUF) /* \_SB_.PCI0.SPI3.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((S30A == Zero) || (L16D == One))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, S31A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }
        }

        Device (NFC2)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "NXP1002")  // _HID: Hardware ID
            Name (_CID, "NXP1002")  // _CID: Compatible ID
            Name (_DDN, "NXP NFC")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (NFCS == 0x02)
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }

        Method (CDSM, 5, Serialized)
        {
            If (Arg0 == ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */)
            {
                If (Arg2 == Zero)
                {
                    If (Arg1 == One)
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             /* . */
                        })
                    }
                }
                ElseIf (Arg2 == One)
                {
                    Return (Arg4)
                }
            }

            Return (Buffer (One)
            {
                 0x00                                             /* . */
            })
        }

        Device (I2C1)
        {
            Name (_HID, "808622C1")  // _HID: Hardware ID
            Name (_CID, "808622C1")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) I2C Controller #1 - 808622C1")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (_SHT, 0x50)
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y0E)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000020,
                }
                FixedDMA (0x0010, 0x0000, Width32bit, )
                FixedDMA (0x0011, 0x0001, Width32bit, )
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.I2C1._Y0E._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.I2C1._Y0E._LEN, B0LN)  // _LEN: Length
                B0BA = I10A /* \I10A */
                B0LN = I10L /* \I10L */
                Return (RBUF) /* \_SB_.PCI0.I2C1.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (OSYS <= 0x07D9)
                {
                    Return (Zero)
                }

                If ((I10A == Zero) || (L21D == One))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If (I0D3 == One)
                {
                    PSAT |= 0x03
                    PSAT |= Zero
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If (I0D3 == One)
                {
                    PSAT &= 0xFFFFFFFC
                    PSAT |= Zero
                }
            }

            OperationRegion (KEYS, SystemMemory, I11A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Device (SHUB)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "ITE8386")  // _HID: Hardware ID
                Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
                Name (_DDN, "STM32F103RD")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Name (_DEP, Package (0x01)  // _DEP: Dependencies
                {
                    GPO2
                })
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    Return (CDSM (Arg0, Arg1, Arg2, Arg3, One))
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (OSYS <= 0x07D9)
                    {
                        Return (Zero)
                    }

                    If ((ECTP == 0x83) && (TSMT == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                }

                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x0050, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C1",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioInt (Level, ActiveLow, Exclusive, PullUp, 0x0000,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0015
                            }
                    })
                    Return (SBUF) /* \_SB_.PCI0.I2C1.SHUB._CRS.SBUF */
                }
            }
        }

        Device (I2C2)
        {
            Name (_HID, "808622C1")  // _HID: Hardware ID
            Name (_CID, "808622C1")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) I2C Controller #2 - 808622C2")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_SHT, 0x50)
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y0F)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000021,
                }
                FixedDMA (0x0012, 0x0002, Width32bit, )
                FixedDMA (0x0013, 0x0003, Width32bit, )
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.I2C2._Y0F._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.I2C2._Y0F._LEN, B0LN)  // _LEN: Length
                B0BA = I20A /* \I20A */
                B0LN = I20L /* \I20L */
                Return (RBUF) /* \_SB_.PCI0.I2C2.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (OSYS <= 0x07D9)
                {
                    Return (Zero)
                }

                If ((I20A == Zero) || (L22D == One))
                {
                    Return (Zero)
                }

                If (BDID == CRRB)
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If (I1D3 == One)
                {
                    PSAT |= 0x03
                    PSAT |= Zero
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If (I1D3 == One)
                {
                    PSAT &= 0xFFFFFFFC
                    PSAT |= Zero
                }
            }

            OperationRegion (KEYS, SystemMemory, I21A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Device (TCS0)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "WCOM5071")  // _HID: Hardware ID
                Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x000A, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C2",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioInt (Level, ActiveLow, Exclusive, PullNone, 0x0000,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0011
                            }
                    })
                    Return (RBUF) /* \_SB_.PCI0.I2C2.TCS0._CRS.RBUF */
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    Debug = "Method _DSM begin"
                    If (Arg0 == ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */)
                    {
                        While (One)
                        {
                            _T_0 = ToInteger (Arg2)
                            If (_T_0 == Zero)
                            {
                                While (One)
                                {
                                    _T_1 = ToInteger (Arg1)
                                    If (_T_1 == One)
                                    {
                                        Debug = "Method _DSM Function Query"
                                        Return (Buffer (One)
                                        {
                                             0x03                                             /* . */
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             /* . */
                                        })
                                    }

                                    Break
                                }
                            }
                            ElseIf (_T_0 == One)
                            {
                                Debug = "Method _DSM Function HID"
                                Return (Zero)
                            }
                            Else
                            {
                                Return (Zero)
                            }

                            Break
                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             /* . */
                        })
                    }
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (TSMT == One)
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
            }

            Device (RTEK)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "10EC5670")  // _HID: Hardware ID
                Name (_CID, "10EC5670")  // _CID: Compatible ID
                Name (_DDN, "RTEK Codec Controller ")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x001C, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C2",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                            "\\_SB.GPO3", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004D
                            }
                    })
                    Return (SBUF) /* \_SB_.PCI0.I2C2.RTEK._CRS.SBUF */
                }

                Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                {
                    CKC3 = Zero
                }

                Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                {
                    CKC3 = One
                }

                Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                {
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LPES == 0x02)
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
            }

            Device (IMP2)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "IMPJ0002")  // _HID: Hardware ID
                Name (_CID, "IMPJ0002")  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x006F, ControllerInitiated, 0x000186A0,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C2",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                    })
                    Return (SBUF) /* \_SB_.PCI0.I2C2.IMP2._CRS.SBUF */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((PSDE == One) & (BDID != CHRB))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
            }

            Device (IMP3)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "IMPJ0003")  // _HID: Hardware ID
                Name (_CID, "IMPJ0003")  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x006E, ControllerInitiated, 0x000186A0,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C2",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                    })
                    Return (SBUF) /* \_SB_.PCI0.I2C2.IMP3._CRS.SBUF */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((PSDE == 0x02) & (BDID != CHRB))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
            }
        }

        Device (I2C3)
        {
            Name (_HID, "808622C1")  // _HID: Hardware ID
            Name (_CID, "808622C1")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) I2C Controller #3 - 808622C3")  // _DDN: DOS Device Name
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y10)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000022,
                }
                FixedDMA (0x0014, 0x0004, Width32bit, )
                FixedDMA (0x0015, 0x0005, Width32bit, )
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.I2C3._Y10._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.I2C3._Y10._LEN, B0LN)  // _LEN: Length
                B0BA = I30A /* \I30A */
                B0LN = I30L /* \I30L */
                Return (RBUF) /* \_SB_.PCI0.I2C3.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (OSYS <= 0x07D9)
                {
                    Return (Zero)
                }

                If ((I30A == Zero) || (L23D == One))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If (I2D3 == One)
                {
                    PSAT |= 0x03
                    PSAT |= Zero
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If (I2D3 == One)
                {
                    PSAT &= 0xFFFFFFFC
                    PSAT |= Zero
                }
            }

            OperationRegion (KEYS, SystemMemory, I31A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            PowerResource (CLK0, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (CKC0) /* \CKC0 */
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    CKC0 = One
                    Sleep (0x05)
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    CKC0 = 0x02
                }
            }

            Device (CAMD)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "INT33F7")  // _HID: Hardware ID
                Name (_CID, "INT33F7")  // _CID: Compatible ID
                Name (_SUB, "INTL0000")  // _SUB: Subsystem ID
                Name (_DDN, "OV2724")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    CLK0
                })
                Name (PLDB, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                        /* 0008 */  0x61, 0x0C, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,  /* a....... */
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           /* .... */
                    }
                })
                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (PLDB) /* \_SB_.PCI0.I2C3.CAMD.PLDB */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((CAMS == One) && (RCAM == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0035
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002E
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0034
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0030
                            }
                        I2cSerialBusV2 (0x0036, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C3",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                    })
                    Return (SBUF) /* \_SB_.PCI0.I2C3.CAMD._CRS.SBUF */
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (Arg0 == ToUUID ("377ba76a-f390-4aff-ab38-9b1bf33a3015"))
                    {
                        Return ("INT33F7")
                    }

                    If (Arg0 == ToUUID ("3c62aaaa-d8e0-401a-84c3-fc05656fa28c"))
                    {
                        Return ("OV2724")
                    }

                    If (Arg0 == ToUUID ("822ace8f-2814-4174-a56b-5f029fe079ee"))
                    {
                        Return ("3SF201T2")
                    }

                    If (Arg0 == ToUUID ("2959512a-028c-4646-b73d-4d1b5672fad8"))
                    {
                        Return ("BSW_ITL_RVP")
                    }

                    If (Arg0 == ToUUID ("ea3b7bd8-e09b-4239-ad6e-ed525f3f26ab"))
                    {
                        If (BDID == CRRB)
                        {
                            Return (0x1011)
                        }

                        Return (0x1021)
                    }

                    If (Arg0 == ToUUID ("b65ac492-9e30-4d60-b5b2-f497c790d9cf"))
                    {
                        Return (Zero)
                    }

                    If (Arg0 == ToUUID ("e770ab0f-2644-4bab-8628-d62f1683fb9d"))
                    {
                        Return (Zero)
                    }

                    If (Arg0 == ToUUID ("1ea54ab2-cd84-48cc-9dd4-7f594ec3b015"))
                    {
                        Return (0x02)
                    }

                    If (Arg0 == ToUUID ("75c9a639-5c8a-4a00-9f48-a9c3b5da789f"))
                    {
                        Return (Zero)
                    }

                    If (Arg0 == ToUUID ("2fa9bb94-9c5d-4aeb-8e6e-27434f81e3d3"))
                    {
                        Return ("BSW")
                    }

                    If (Arg0 == ToUUID ("647a6ca2-8b29-49ac-8806-d58b3d2d3ef5"))
                    {
                        Return ("FFD")
                    }

                    If (Arg0 == ToUUID ("a6e922a1-f7b3-4399-b56a-406ae416843b"))
                    {
                        Return ("BSW")
                    }

                    If (Arg0 == ToUUID ("5960313b-0ab0-4940-8840-2cafa420c015"))
                    {
                        Return ("INTEL")
                    }

                    If (Arg0 == ToUUID ("f486d39f-d657-484b-84a6-42a565712b92"))
                    {
                        If (BDID == CRRB)
                        {
                            Return (Buffer (0x20)
                            {
                                /* 0000 */  0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                /* 0008 */  0x07, 0x01, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                            })
                        }

                        Return (Buffer (0x20)
                        {
                            /* 0000 */  0x01, 0x01, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                            /* 0008 */  0x07, 0x01, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                            /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                            /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                        })
                    }

                    If (Arg0 == ToUUID ("26257549-9271-4ca4-bb43-c4899d5a4881"))
                    {
                        If (Arg2 == One)
                        {
                            Return (One)
                        }

                        If (Arg2 == 0x02)
                        {
                            Return (0x02003600)
                        }
                    }

                    If (Arg0 == ToUUID ("79234640-9e10-4fea-a5c1-b5aa8b19756f"))
                    {
                        If (Arg2 == One)
                        {
                            Return (0x04)
                        }

                        If (Arg2 == 0x02)
                        {
                            Return (0x01003507)
                        }

                        If (Arg2 == 0x03)
                        {
                            Return (0x01002E08)
                        }

                        If (Arg2 == 0x04)
                        {
                            Return (0x01003400)
                        }

                        If (Arg2 == 0x05)
                        {
                            Return (0x01003001)
                        }
                    }

                    Return (Zero)
                }
            }

            Device (ACC)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "BOSC0200")  // _HID: Hardware ID
                Name (_CID, "BOSC0200")  // _CID: Compatible ID
                Name (_DDN, "Accelerometer")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x0019, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C3",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        I2cSerialBusV2 (0x0018, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C3",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                    })
                    Return (RBUF) /* \_SB_.PCI0.I2C3.ACC_._CRS.RBUF */
                }

                Method (ROMS, 0, NotSerialized)
                {
                    Name (SBUF, Package (0x03)
                    {
                        "0 1 0", 
                        "-1 0 0", 
                        "0 0 -1"
                    })
                    Return (SBUF) /* \_SB_.PCI0.I2C3.ACC_.ROMS.SBUF */
                }

                Method (ROMK, 0, NotSerialized)
                {
                    Name (SBUF, Package (0x03)
                    {
                        "1 0 0", 
                        "0 1 0", 
                        "0 0 -1"
                    })
                    Return (SBUF) /* \_SB_.PCI0.I2C3.ACC_.ROMK.SBUF */
                }

                Method (CALS, 1, NotSerialized)
                {
                    Local0 = Arg0
                    If ((Local0 == Zero) || (Local0 == Ones))
                    {
                        Local0 = BAC1 /* \BAC1 */
                        Return (Local0)
                    }
                    Else
                    {
                        BAC1 = Local0
                        BSCA (Zero)
                    }
                }

                Method (CALK, 1, NotSerialized)
                {
                    Local0 = Arg0
                    If ((Local0 == Zero) || (Local0 == Ones))
                    {
                        Local0 = BAC2 /* \BAC2 */
                        Return (Local0)
                    }
                    Else
                    {
                        BAC2 = Local0
                        BSCA (One)
                    }
                }

                Method (ANGL, 1, NotSerialized)
                {
                    ^^^LPCB.EC.MOID = Arg0
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (OSYS <= 0x07D9)
                    {
                        Return (Zero)
                    }

                    If ((ECTP == 0x88) && (TSMT == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
            }
        }

        Device (I2C4)
        {
            Name (_HID, "808622C1")  // _HID: Hardware ID
            Name (_CID, "808622C1")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) I2C Controller #4 - 808622C4")  // _DDN: DOS Device Name
            Name (_UID, 0x04)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y11)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000023,
                }
                FixedDMA (0x0016, 0x0006, Width32bit, )
                FixedDMA (0x0017, 0x0007, Width32bit, )
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.I2C4._Y11._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.I2C4._Y11._LEN, B0LN)  // _LEN: Length
                B0BA = I40A /* \I40A */
                B0LN = I40L /* \I40L */
                Return (RBUF) /* \_SB_.PCI0.I2C4.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((I40A == Zero) || (L24D == One))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If (I3D3 == One)
                {
                    PSAT |= 0x03
                    PSAT |= Zero
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If (I3D3 == One)
                {
                    PSAT &= 0xFFFFFFFC
                    PSAT |= Zero
                }
            }

            OperationRegion (KEYS, SystemMemory, I41A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            PowerResource (CLK0, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (CKC0) /* \CKC0 */
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    CKC0 = One
                    Sleep (0x05)
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    CKC0 = 0x02
                }
            }

            PowerResource (CLK1, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (CKC1) /* \CKC1 */
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    CKC1 = One
                    Sleep (0x05)
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    CKC1 = 0x02
                }
            }

            Device (CAM1)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "INTCF1A" /* Sony IMX175 Camera Sensor */)  // _HID: Hardware ID
                Name (_CID, "INTCF1A" /* Sony IMX175 Camera Sensor */)  // _CID: Compatible ID
                Name (_SUB, "INTL0000")  // _SUB: Subsystem ID
                Name (_DDN, "Sony IMX175")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    CLK0
                })
                Name (PLDB, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                        /* 0008 */  0x69, 0x0C, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,  /* i....... */
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           /* .... */
                    }
                })
                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (PLDB) /* \_SB_.PCI0.I2C4.CAM1.PLDB */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((CAMS == One) && (RCAM == Zero))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0034
                            }
                        I2cSerialBusV2 (0x0010, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C4",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        I2cSerialBusV2 (0x000C, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C4",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        I2cSerialBusV2 (0x0054, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C4",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                    })
                    Return (SBUF) /* \_SB_.PCI0.I2C4.CAM1._CRS.SBUF */
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (Arg0 == ToUUID ("377ba76a-f390-4aff-ab38-9b1bf33a3015"))
                    {
                        Return ("INTCF1A")
                    }

                    If (Arg0 == ToUUID ("3c62aaaa-d8e0-401a-84c3-fc05656fa28c"))
                    {
                        Return ("IMX175")
                    }

                    If (Arg0 == ToUUID ("822ace8f-2814-4174-a56b-5f029fe079ee"))
                    {
                        Return ("13P2BA807")
                    }

                    If (Arg0 == ToUUID ("2959512a-028c-4646-b73d-4d1b5672fad8"))
                    {
                        Return ("INTEL_RVP")
                    }

                    If (Arg0 == ToUUID ("918ab242-c37c-450a-9d0f-f47ab97c3dea"))
                    {
                        Return (0x0104)
                    }

                    If (Arg0 == ToUUID ("ea3b7bd8-e09b-4239-ad6e-ed525f3f26ab"))
                    {
                        Return (One)
                    }

                    If (Arg0 == ToUUID ("b65ac492-9e30-4d60-b5b2-f497c790d9cf"))
                    {
                        Return (Zero)
                    }

                    If (Arg0 == ToUUID ("e770ab0f-2644-4bab-8628-d62f1683fb9d"))
                    {
                        Return (0x02)
                    }

                    If (Arg0 == ToUUID ("1ea54ab2-cd84-48cc-9dd4-7f594ec3b015"))
                    {
                        Return (Zero)
                    }

                    If (Arg0 == ToUUID ("8dbe2651-70c1-4c6f-ac87-a37cb46e4af6"))
                    {
                        Return (Zero)
                    }

                    If (Arg0 == ToUUID ("75c9a639-5c8a-4a00-9f48-a9c3b5da789f"))
                    {
                        Return (Zero)
                    }

                    If (Arg0 == ToUUID ("26257549-9271-4ca4-bb43-c4899d5a4881"))
                    {
                        If (Arg2 == One)
                        {
                            Return (0x03)
                        }

                        If (Arg2 == 0x02)
                        {
                            Return (0x04001000)
                        }

                        If (Arg2 == 0x03)
                        {
                            Return (0x04000C01)
                        }

                        If (Arg2 == 0x04)
                        {
                            Return (0x04005402)
                        }
                    }

                    If (Arg0 == ToUUID ("79234640-9e10-4fea-a5c1-b5aa8b19756f"))
                    {
                        If (Arg2 == One)
                        {
                            Return (One)
                        }

                        If (Arg2 == 0x02)
                        {
                            Return (0x01001800)
                        }
                    }

                    Return (Zero)
                }
            }

            Device (CAM2)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "INT33FB" /* MIPI-CSI Camera Sensor OV2722 */)  // _HID: Hardware ID
                Name (_CID, "INT33FB" /* MIPI-CSI Camera Sensor OV2722 */)  // _CID: Compatible ID
                Name (_SUB, "INTL0000")  // _SUB: Subsystem ID
                Name (_DDN, "OV2722")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    CLK1
                })
                Name (PLDB, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                        /* 0008 */  0x61, 0x0C, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,  /* a....... */
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           /* .... */
                    }
                })
                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (PLDB) /* \_SB_.PCI0.I2C4.CAM2.PLDB */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((CAMS == One) && (RCAM == Zero))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0036
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0032
                            }
                        I2cSerialBusV2 (0x0036, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C4",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                    })
                    Return (SBUF) /* \_SB_.PCI0.I2C4.CAM2._CRS.SBUF */
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (Arg0 == ToUUID ("377ba76a-f390-4aff-ab38-9b1bf33a3015"))
                    {
                        Return ("INT33FB")
                    }

                    If (Arg0 == ToUUID ("3c62aaaa-d8e0-401a-84c3-fc05656fa28c"))
                    {
                        Return ("OV2722")
                    }

                    If (Arg0 == ToUUID ("822ace8f-2814-4174-a56b-5f029fe079ee"))
                    {
                        Return ("12P2SF220")
                    }

                    If (Arg0 == ToUUID ("2959512a-028c-4646-b73d-4d1b5672fad8"))
                    {
                        Return ("INTEL_RVP")
                    }

                    If (Arg0 == ToUUID ("918ab242-c37c-450a-9d0f-f47ab97c3dea"))
                    {
                        Return (0x0101)
                    }

                    If (Arg0 == ToUUID ("ea3b7bd8-e09b-4239-ad6e-ed525f3f26ab"))
                    {
                        Return (Zero)
                    }

                    If (Arg0 == ToUUID ("b65ac492-9e30-4d60-b5b2-f497c790d9cf"))
                    {
                        Return (Zero)
                    }

                    If (Arg0 == ToUUID ("e770ab0f-2644-4bab-8628-d62f1683fb9d"))
                    {
                        Return (Zero)
                    }

                    If (Arg0 == ToUUID ("1ea54ab2-cd84-48cc-9dd4-7f594ec3b015"))
                    {
                        Return (Zero)
                    }

                    If (Arg0 == ToUUID ("8dbe2651-70c1-4c6f-ac87-a37cb46e4af6"))
                    {
                        Return (One)
                    }

                    If (Arg0 == ToUUID ("75c9a639-5c8a-4a00-9f48-a9c3b5da789f"))
                    {
                        Return (Zero)
                    }

                    If (Arg0 == ToUUID ("26257549-9271-4ca4-bb43-c4899d5a4881"))
                    {
                        If (Arg2 == One)
                        {
                            Return (One)
                        }

                        If (Arg2 == 0x02)
                        {
                            Return (0x04003600)
                        }
                    }

                    If (Arg0 == ToUUID ("79234640-9e10-4fea-a5c1-b5aa8b19756f"))
                    {
                        If (Arg2 == One)
                        {
                            Return (0x02)
                        }

                        If (Arg2 == 0x02)
                        {
                            Return (0x01001600)
                        }

                        If (Arg2 == 0x03)
                        {
                            Return (0x01001901)
                        }
                    }

                    Return (Zero)
                }
            }

            Device (STRA)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "INTCF1C")  // _HID: Hardware ID
                Name (_CID, "INTCF1C")  // _CID: Compatible ID
                Name (_SUB, "INTL0000")  // _SUB: Subsystem ID
                Name (_DDN, "Flash LM3554")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((CAMS == One) && (RCAM == Zero))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0038
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002F
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0035
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002E
                            }
                        I2cSerialBusV2 (0x0053, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C4",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                    })
                    Return (SBUF) /* \_SB_.PCI0.I2C4.STRA._CRS.SBUF */
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (Arg0 == ToUUID ("377ba76a-f390-4aff-ab38-9b1bf33a3015"))
                    {
                        Return ("INTCF1C")
                    }

                    If (Arg0 == ToUUID ("822ace8f-2814-4174-a56b-5f029fe079ee"))
                    {
                        Return ("LM3554")
                    }

                    If (Arg0 == ToUUID ("2959512a-028c-4646-b73d-4d1b5672fad8"))
                    {
                        Return ("INTEL_RVP")
                    }

                    If (Arg0 == ToUUID ("75c9a639-5c8a-4a00-9f48-a9c3b5da789f"))
                    {
                        Return (Zero)
                    }

                    If (Arg0 == ToUUID ("26257549-9271-4ca4-bb43-c4899d5a4881"))
                    {
                        If (Arg2 == One)
                        {
                            Return (One)
                        }

                        If (Arg2 == 0x02)
                        {
                            Return (0x04005300)
                        }
                    }

                    If (Arg0 == ToUUID ("79234640-9e10-4fea-a5c1-b5aa8b19756f"))
                    {
                        If (Arg2 == One)
                        {
                            Return (0x04)
                        }

                        If (Arg2 == 0x02)
                        {
                            Return (0x01001302)
                        }

                        If (Arg2 == 0x03)
                        {
                            Return (0x01001403)
                        }

                        If (Arg2 == 0x04)
                        {
                            Return (0x01001001)
                        }

                        If (Arg2 == 0x05)
                        {
                            Return (0x01001104)
                        }
                    }

                    Return (Zero)
                }
            }

            Device (CAM3)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "INT33BE" /* Camera Sensor OV5693 */)  // _HID: Hardware ID
                Name (_CID, "INT33BE" /* Camera Sensor OV5693 */)  // _CID: Compatible ID
                Name (_SUB, "INTL0000")  // _SUB: Subsystem ID
                Name (_DDN, "OV5693")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    CLK1
                })
                Name (PLDB, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                        /* 0008 */  0x69, 0x0C, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,  /* i....... */
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           /* .... */
                    }
                })
                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (PLDB) /* \_SB_.PCI0.I2C4.CAM3.PLDB */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((CAMS == One) && (RCAM == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0032
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0033
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0038
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002D
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0031
                            }
                        I2cSerialBusV2 (0x0010, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C4",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        I2cSerialBusV2 (0x000C, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C4",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        I2cSerialBusV2 (0x0054, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C4",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        I2cSerialBusV2 (0x0055, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C4",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        I2cSerialBusV2 (0x0056, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C4",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        I2cSerialBusV2 (0x0057, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C4",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                    })
                    Return (SBUF) /* \_SB_.PCI0.I2C4.CAM3._CRS.SBUF */
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (Arg0 == ToUUID ("377ba76a-f390-4aff-ab38-9b1bf33a3015"))
                    {
                        Return ("INT33BE")
                    }

                    If (Arg0 == ToUUID ("3c62aaaa-d8e0-401a-84c3-fc05656fa28c"))
                    {
                        Return ("OV5693")
                    }

                    If (Arg0 == ToUUID ("822ace8f-2814-4174-a56b-5f029fe079ee"))
                    {
                        Return ("13P2BA540")
                    }

                    If (Arg0 == ToUUID ("2959512a-028c-4646-b73d-4d1b5672fad8"))
                    {
                        Return ("BSW_ITL_RVP")
                    }

                    If (Arg0 == ToUUID ("ea3b7bd8-e09b-4239-ad6e-ed525f3f26ab"))
                    {
                        Return (0x1020)
                    }

                    If (Arg0 == ToUUID ("b65ac492-9e30-4d60-b5b2-f497c790d9cf"))
                    {
                        Return (Zero)
                    }

                    If (Arg0 == ToUUID ("e770ab0f-2644-4bab-8628-d62f1683fb9d"))
                    {
                        Return (0x08)
                    }

                    If (Arg0 == ToUUID ("1ea54ab2-cd84-48cc-9dd4-7f594ec3b015"))
                    {
                        Return (0x02)
                    }

                    If (Arg0 == ToUUID ("75c9a639-5c8a-4a00-9f48-a9c3b5da789f"))
                    {
                        Return ("AD5823")
                    }

                    If (Arg0 == ToUUID ("2fa9bb94-9c5d-4aeb-8e6e-27434f81e3d3"))
                    {
                        Return ("BSW")
                    }

                    If (Arg0 == ToUUID ("647a6ca2-8b29-49ac-8806-d58b3d2d3ef5"))
                    {
                        Return ("FFD")
                    }

                    If (Arg0 == ToUUID ("a6e922a1-f7b3-4399-b56a-406ae416843b"))
                    {
                        Return ("BSW")
                    }

                    If (Arg0 == ToUUID ("5960313b-0ab0-4940-8840-2cafa420c015"))
                    {
                        Return ("INTEL")
                    }

                    If (Arg0 == ToUUID ("f486d39f-d657-484b-84a6-42a565712b92"))
                    {
                        Return (Buffer (0x20)
                        {
                            /* 0000 */  0x01, 0x00, 0x02, 0x00, 0x00, 0x00, 0x08, 0x02,  /* ........ */
                            /* 0008 */  0x07, 0x01, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                            /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                            /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                        })
                    }

                    If (Arg0 == ToUUID ("26257549-9271-4ca4-bb43-c4899d5a4881"))
                    {
                        If (Arg2 == One)
                        {
                            Return (0x06)
                        }

                        If (Arg2 == 0x02)
                        {
                            Return (0x04001000)
                        }

                        If (Arg2 == 0x03)
                        {
                            Return (0x04000C01)
                        }

                        If (Arg2 == 0x04)
                        {
                            Return (0x04005402)
                        }

                        If (Arg2 == 0x05)
                        {
                            Return (0x04005503)
                        }

                        If (Arg2 == 0x06)
                        {
                            Return (0x04005604)
                        }

                        If (Arg2 == 0x07)
                        {
                            Return (0x04005705)
                        }
                    }

                    If (Arg0 == ToUUID ("79234640-9e10-4fea-a5c1-b5aa8b19756f"))
                    {
                        If (Arg2 == One)
                        {
                            Return (0x05)
                        }

                        If (Arg2 == 0x02)
                        {
                            Return (0x01003200)
                        }

                        If (Arg2 == 0x03)
                        {
                            Return (0x01003301)
                        }

                        If (Arg2 == 0x04)
                        {
                            Return (0x01003807)
                        }

                        If (Arg2 == 0x05)
                        {
                            Return (0x01002D08)
                        }

                        If (Arg2 == 0x06)
                        {
                            Return (0x01003109)
                        }
                    }

                    Return (Zero)
                }
            }

            Device (STRB)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "INTCF1C")  // _HID: Hardware ID
                Name (_CID, "INTCF1C")  // _CID: Compatible ID
                Name (_SUB, "INTL0000")  // _SUB: Subsystem ID
                Name (_DDN, "Flash LM3554")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (RCAM == One)
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0036
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002F
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0037
                            }
                        I2cSerialBusV2 (0x0053, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C4",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                    })
                    Return (SBUF) /* \_SB_.PCI0.I2C4.STRB._CRS.SBUF */
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (Arg0 == ToUUID ("377ba76a-f390-4aff-ab38-9b1bf33a3015"))
                    {
                        Return ("INTCF1C")
                    }

                    If (Arg0 == ToUUID ("822ace8f-2814-4174-a56b-5f029fe079ee"))
                    {
                        Return ("LM3554")
                    }

                    If (Arg0 == ToUUID ("2959512a-028c-4646-b73d-4d1b5672fad8"))
                    {
                        Return ("BSW_ITL_RVP")
                    }

                    If (Arg0 == ToUUID ("75c9a639-5c8a-4a00-9f48-a9c3b5da789f"))
                    {
                        Return (Zero)
                    }

                    If (Arg0 == ToUUID ("26257549-9271-4ca4-bb43-c4899d5a4881"))
                    {
                        If (Arg2 == One)
                        {
                            Return (One)
                        }

                        If (Arg2 == 0x02)
                        {
                            Return (0x04005300)
                        }
                    }

                    If (Arg0 == ToUUID ("79234640-9e10-4fea-a5c1-b5aa8b19756f"))
                    {
                        If (Arg2 == One)
                        {
                            Return (0x03)
                        }

                        If (Arg2 == 0x02)
                        {
                            Return (0x01003601)
                        }

                        If (Arg2 == 0x03)
                        {
                            Return (0x01002F02)
                        }

                        If (Arg2 == 0x04)
                        {
                            Return (0x01003705)
                        }
                    }

                    Return (Zero)
                }
            }
        }

        Device (I2C5)
        {
            Name (_HID, "808622C1")  // _HID: Hardware ID
            Name (_CID, "808622C1")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) I2C Controller #5 - 808622C5")  // _DDN: DOS Device Name
            Name (_UID, 0x05)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y12)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000024,
                }
                FixedDMA (0x0018, 0x0000, Width32bit, )
                FixedDMA (0x0019, 0x0001, Width32bit, )
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.I2C5._Y12._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.I2C5._Y12._LEN, B0LN)  // _LEN: Length
                B0BA = I50A /* \I50A */
                B0LN = I50L /* \I50L */
                Return (RBUF) /* \_SB_.PCI0.I2C5.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((I50A == Zero) || (L25D == One))
                {
                    Return (Zero)
                }

                If (BDID == CRRB)
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If (I4D3 == One)
                {
                    PSAT |= 0x03
                    PSAT |= Zero
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If (I4D3 == One)
                {
                    PSAT &= 0xFFFFFFFC
                    PSAT |= Zero
                }
            }

            OperationRegion (KEYS, SystemMemory, I51A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Device (TPDC)
            {
                Name (_ADR, One)  // _ADR: Address
                Name (_HID, "MSFT0002")  // _HID: Hardware ID
                Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    Return (CDSM (Arg0, Arg1, Arg2, Arg3, 0x20))
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (BDID == CRRB)
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                {
                    Name (SBFI, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x0020, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C5",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioInt (Level, ActiveLow, Shared, PullDefault, 0x0000,
                            "\\_SB.GPO3", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004D
                            }
                    })
                    Return (SBFI) /* \_SB_.PCI0.I2C5.TPDC._CRS.SBFI */
                }
            }
        }

        Method (TPSC, 0, Serialized)
        {
            If (^^GPO0.AVBL == One)
            {
                If (BDID == CRRB)
                {
                    If (^^GPO0.TSRR == Zero)
                    {
                        Return (0x03)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
                ElseIf (FBID == 0x02)
                {
                    If (^^GPO0.TSR2 == Zero)
                    {
                        Return (0x03)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
                ElseIf (^^GPO0.TSRS == Zero)
                {
                    Return (0x03)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Method (TPS3, 0, Serialized)
        {
            If (^^GPO0.AVBL == One)
            {
                If (BDID == CRRB)
                {
                    ^^GPO0.TSRR = Zero
                }
                ElseIf (FBID == 0x02)
                {
                    ^^GPO0.TSR2 = Zero
                }
                Else
                {
                    ^^GPO0.TSRS = Zero
                }
            }
        }

        Method (TPS0, 0, Serialized)
        {
            If (^^GPO0.AVBL == One)
            {
                If (BDID == CRRB)
                {
                    ^^GPO0.TSRR = One
                }
                ElseIf (FBID == 0x02)
                {
                    ^^GPO0.TSR2 = One
                }
                Else
                {
                    ^^GPO0.TSRS = One
                }
            }

            Sleep (0x64)
        }

        Method (TCRS, 1, Serialized)
        {
            Name (RSTL, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x004A, ControllerInitiated, 0x00061A80,
                    AddressingMode7Bit, "\\_SB.PCI0.I2C6",
                    0x00, ResourceConsumer, _Y13, Exclusive,
                    )
                GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x004B
                    }
                GpioInt (Level, ActiveLow, Shared, PullDefault, 0x0000,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x004C
                    }
            })
            CreateByteField (RSTL, \_SB.PCI0.TCRS._Y13._ADR, VAL0)  // _ADR: Address
            VAL0 = Arg0
            CreateByteField (RSTL, 0x38, VAL1)
            If (BDID == CRRB)
            {
                VAL1 = 0x4B
            }
            ElseIf (FBID == 0x02)
            {
                VAL1 = 0x4E
            }
            Else
            {
                VAL1 = 0x50
            }

            Return (RSTL) /* \_SB_.PCI0.TCRS.RSTL */
        }

        Device (I2C6)
        {
            Name (_HID, "808622C1")  // _HID: Hardware ID
            Name (_CID, "808622C1")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) I2C Controller #6 - 808622C6")  // _DDN: DOS Device Name
            Name (_UID, 0x06)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y14)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000025,
                }
                FixedDMA (0x001A, 0x0002, Width32bit, )
                FixedDMA (0x001B, 0x0003, Width32bit, )
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.I2C6._Y14._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.I2C6._Y14._LEN, B0LN)  // _LEN: Length
                B0BA = I60A /* \I60A */
                B0LN = I60L /* \I60L */
                Return (RBUF) /* \_SB_.PCI0.I2C6.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((I60A == Zero) || (L26D == One))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If (I5D3 == One)
                {
                    PSAT |= 0x03
                    PSAT |= Zero
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If (I5D3 == One)
                {
                    PSAT &= 0xFFFFFFFC
                    PSAT |= Zero
                }
            }

            OperationRegion (KEYS, SystemMemory, I61A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Device (TSC0)
            {
                Name (_HID, "ATML7000")  // _HID: Hardware ID
                Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
                Name (HIDA, Zero)
                Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
                Name (_DEP, Package (0x01)  // _DEP: Dependencies
                {
                    GPO0
                })
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    Return (CDSM (Arg0, Arg1, Arg2, Arg3, HIDA))
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (BDID == CHRB)
                    {
                        Return (Zero)
                    }

                    If (ITSA == Zero)
                    {
                        If (BDID == CRRB)
                        {
                            Return (Zero)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If (ITSA == 0x4A)
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_PSC, 0, Serialized)  // _PSC: Power State Current
                {
                    TPSC ()
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                    TPS3 ()
                }

                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    TPS0 ()
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (TCRS (0x4A))
                }
            }

            Device (TCS1)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "ATML1000" /* Atmel Touchscreen Controller */)  // _HID: Hardware ID
                Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
                Name (HIDA, Zero)
                Name (_UID, One)  // _UID: Unique ID
                Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
                Name (_DEP, Package (0x01)  // _DEP: Dependencies
                {
                    GPO0
                })
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    Return (CDSM (Arg0, Arg1, Arg2, Arg3, HIDA))
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (BDID == CHRB)
                    {
                        Return (Zero)
                    }

                    If (ITSA == Zero)
                    {
                        If (BDID == CRRB)
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (0x0F)
                        }
                    }

                    If (ITSA == 0x4C)
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_PSC, 0, Serialized)  // _PSC: Power State Current
                {
                    TPSC ()
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                    TPS3 ()
                }

                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    TPS0 ()
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (TCRS (0x4C))
                }
            }

            Device (TPD1)
            {
                Name (_ADR, One)  // _ADR: Address
                Name (_HID, "MSFT0002")  // _HID: Hardware ID
                Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    Return (CDSM (Arg0, Arg1, Arg2, Arg3, 0x20))
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((BDID == CRRB) | (BDID == CHRB))
                    {
                        Return (Zero)
                    }

                    Return (0x0F)
                }

                Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                {
                    Name (SBFI, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x0020, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C6",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioInt (Level, ActiveLow, Exclusive, PullNone, 0x0000,
                            "\\_SB.GPO3", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004D
                            }
                    })
                    Return (SBFI) /* \_SB_.PCI0.I2C6.TPD1._CRS.SBFI */
                }
            }
        }

        Device (I2C7)
        {
            Name (_HID, "808622C1")  // _HID: Hardware ID
            Name (_CID, "808622C1")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) I2C Controller #7 - 808622C7")  // _DDN: DOS Device Name
            Name (_UID, 0x07)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y15)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000026,
                }
                FixedDMA (0x001C, 0x0004, Width32bit, )
                FixedDMA (0x001D, 0x0005, Width32bit, )
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.I2C7._Y15._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.I2C7._Y15._LEN, B0LN)  // _LEN: Length
                B0BA = I70A /* \I70A */
                B0LN = I70L /* \I70L */
                Return (RBUF) /* \_SB_.PCI0.I2C7.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((I70A == Zero) || (L27D == One))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If (I6D3 == One)
                {
                    PSAT |= 0x03
                    PSAT |= Zero
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If (I6D3 == One)
                {
                    PSAT &= 0xFFFFFFFC
                    PSAT |= Zero
                }
            }

            OperationRegion (KEYS, SystemMemory, I71A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Device (NFC1)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "NXP7471")  // _HID: Hardware ID
                Name (_CID, "NXP7471")  // _CID: Compatible ID
                Name (_DDN, "NXP NFC")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x0029, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C7",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioInt (Level, ActiveHigh, Exclusive, PullNone, 0x0000,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0017
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x001B
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0010
                            }
                    })
                    Return (SBUF) /* \_SB_.PCI0.I2C7.NFC1._CRS.SBUF */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((NFCS <= One) & (BDID != CHRB))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
            }
        }

        Device (HDEF)
        {
            Name (_ADR, 0x001B0000)  // _ADR: Address
            OperationRegion (HDAR, PCI_Config, 0x4C, 0x10)
            Field (HDAR, WordAcc, NoLock, Preserve)
            {
                DCKA,   1, 
                Offset (0x01), 
                DCKM,   1, 
                    ,   6, 
                DCKS,   1, 
                Offset (0x08), 
                Offset (0x09), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1
            }

            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x0D, 
                0x04
            })
            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
            }
        }

        Device (RP01)
        {
            Name (_ADR, 0x001C0000)  // _ADR: Address
            OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                L0SE,   1, 
                Offset (0x11), 
                Offset (0x12), 
                    ,   13, 
                LASX,   1, 
                Offset (0x1A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x1B), 
                Offset (0x20), 
                Offset (0x22), 
                PSPX,   1, 
                Offset (0x98), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0x9C), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }
                }
            }

            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x09, 
                0x04
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR04) /* \_SB_.AR04 */
                }

                Return (PR04) /* \_SB_.PR04 */
            }
        }

        Device (RP02)
        {
            Name (_ADR, 0x001C0001)  // _ADR: Address
            OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                L0SE,   1, 
                Offset (0x11), 
                Offset (0x12), 
                    ,   13, 
                LASX,   1, 
                Offset (0x1A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x1B), 
                Offset (0x20), 
                Offset (0x22), 
                PSPX,   1, 
                Offset (0x98), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0x9C), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }
                }
            }

            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x09, 
                0x04
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR05) /* \_SB_.AR05 */
                }

                Return (PR05) /* \_SB_.PR05 */
            }
        }

        Device (RP03)
        {
            Name (_ADR, 0x001C0002)  // _ADR: Address
            OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                L0SE,   1, 
                Offset (0x11), 
                Offset (0x12), 
                    ,   13, 
                LASX,   1, 
                Offset (0x1A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x1B), 
                Offset (0x20), 
                Offset (0x22), 
                PSPX,   1, 
                Offset (0x98), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0x9C), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }
                }
            }

            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x09, 
                0x04
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR06) /* \_SB_.AR06 */
                }

                Return (PR06) /* \_SB_.PR06 */
            }
        }

        Device (RP04)
        {
            Name (_ADR, 0x001C0003)  // _ADR: Address
            OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                L0SE,   1, 
                Offset (0x11), 
                Offset (0x12), 
                    ,   13, 
                LASX,   1, 
                Offset (0x1A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x1B), 
                Offset (0x20), 
                Offset (0x22), 
                PSPX,   1, 
                Offset (0x98), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0x9C), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }
                }
            }

            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x09, 
                0x04
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR07) /* \_SB_.AR07 */
                }

                Return (PR07) /* \_SB_.PR07 */
            }
        }

        Device (SBUS)
        {
            Name (_ADR, 0x001F0003)  // _ADR: Address
            OperationRegion (SMBP, PCI_Config, 0x40, 0xC0)
            Field (SMBP, DWordAcc, NoLock, Preserve)
            {
                    ,   2, 
                I2CE,   1
            }

            OperationRegion (SMPB, PCI_Config, 0x20, 0x04)
            Field (SMPB, DWordAcc, NoLock, Preserve)
            {
                    ,   5, 
                SBAR,   11
            }

            OperationRegion (SMBI, SystemIO, (SBAR << 0x05), 0x10)
            Field (SMBI, ByteAcc, NoLock, Preserve)
            {
                HSTS,   8, 
                Offset (0x02), 
                HCON,   8, 
                HCOM,   8, 
                TXSA,   8, 
                DAT0,   8, 
                DAT1,   8, 
                HBDR,   8, 
                PECR,   8, 
                RXSA,   8, 
                SDAT,   16
            }

            Method (SSXB, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = Arg0
                HCOM = Arg1
                HCON = 0x48
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRXB, 1, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCON = 0x44
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (DAT0) /* \_SB_.PCI0.SBUS.DAT0 */
                }

                Return (0xFFFF)
            }

            Method (SWRB, 3, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = Arg0
                HCOM = Arg1
                DAT0 = Arg2
                HCON = 0x48
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRDB, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCOM = Arg1
                HCON = 0x48
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (DAT0) /* \_SB_.PCI0.SBUS.DAT0 */
                }

                Return (0xFFFF)
            }

            Method (SWRW, 3, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = Arg0
                HCOM = Arg1
                DAT1 = (Arg2 & 0xFF)
                DAT0 = ((Arg2 >> 0x08) & 0xFF)
                HCON = 0x4C
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRDW, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCOM = Arg1
                HCON = 0x4C
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (((DAT0 << 0x08) | DAT1))
                }

                Return (0xFFFFFFFF)
            }

            Method (SBLW, 4, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Arg3
                HSTS = 0xBF
                TXSA = Arg0
                HCOM = Arg1
                DAT0 = SizeOf (Arg2)
                Local1 = Zero
                HBDR = DerefOf (Arg2 [Zero])
                HCON = 0x54
                While (SizeOf (Arg2) > Local1)
                {
                    Local0 = 0x0FA0
                    While (!(HSTS & 0x80) && Local0)
                    {
                        Local0--
                        Stall (0x32)
                    }

                    If (!Local0)
                    {
                        KILL ()
                        Return (Zero)
                    }

                    HSTS = 0x80
                    Local1++
                    If (SizeOf (Arg2) > Local1)
                    {
                        HBDR = DerefOf (Arg2 [Local1])
                    }
                }

                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (One)
                }

                Return (Zero)
            }

            Method (SBLR, 3, Serialized)
            {
                Name (TBUF, Buffer (0x0100) {})
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Arg2
                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCOM = Arg1
                HCON = 0x54
                Local0 = 0x0FA0
                While (!(HSTS & 0x80) && Local0)
                {
                    Local0--
                    Stall (0x32)
                }

                If (!Local0)
                {
                    KILL ()
                    Return (Zero)
                }

                TBUF [Zero] = DAT0 /* \_SB_.PCI0.SBUS.DAT0 */
                HSTS = 0x80
                Local1 = One
                While (Local1 < DerefOf (TBUF [Zero]))
                {
                    Local0 = 0x0FA0
                    While (!(HSTS & 0x80) && Local0)
                    {
                        Local0--
                        Stall (0x32)
                    }

                    If (!Local0)
                    {
                        KILL ()
                        Return (Zero)
                    }

                    TBUF [Local1] = HBDR /* \_SB_.PCI0.SBUS.HBDR */
                    HSTS = 0x80
                    Local1++
                }

                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (TBUF) /* \_SB_.PCI0.SBUS.SBLR.TBUF */
                }

                Return (Zero)
            }

            Method (STRT, 0, Serialized)
            {
                Local0 = 0xC8
                While (Local0)
                {
                    If (HSTS & 0x40)
                    {
                        Local0--
                        Sleep (One)
                        If (Local0 == Zero)
                        {
                            Return (One)
                        }
                    }
                    Else
                    {
                        Local0 = Zero
                    }
                }

                Local0 = 0x0FA0
                While (Local0)
                {
                    If (HSTS & One)
                    {
                        Local0--
                        Stall (0x32)
                        If (Local0 == Zero)
                        {
                            KILL ()
                        }
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Return (One)
            }

            Method (COMP, 0, Serialized)
            {
                Local0 = 0x0FA0
                While (Local0)
                {
                    If (HSTS & 0x02)
                    {
                        Return (One)
                    }
                    Else
                    {
                        Local0--
                        Stall (0x32)
                        If (Local0 == Zero)
                        {
                            KILL ()
                        }
                    }
                }

                Return (Zero)
            }

            Method (KILL, 0, Serialized)
            {
                HCON |= 0x02
                HSTS |= 0xFF
            }
        }

        Device (IISH)
        {
            Name (_HID, "808622D8")  // _HID: Hardware ID
            Name (_CID, "808622D8")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) Integrated Sensor Hub - 808622D8")  // _DDN: DOS Device Name
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y16)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y17)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000072,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.IISH._Y16._BAS, B0BA)  // _BAS: Base Address
                B0BA = ISH0 /* \ISH0 */
                CreateDWordField (RBUF, \_SB.PCI0.IISH._Y17._BAS, B1BA)  // _BAS: Base Address
                B1BA = ISH1 /* \ISH1 */
                Return (RBUF) /* \_SB_.PCI0.IISH.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((ISH0 == Zero) || (ISHD == One))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, ISH1, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }
        }

        Device (LPEA)
        {
            Name (_HID, "808622A8")  // _HID: Hardware ID
            Name (_CID, "808622A8")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) Low Power Audio Controller - 808622A8")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00200000,         // Address Length
                    _Y18)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y19)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00200000,         // Address Length
                    _Y1A)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000018,
                }
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000019,
                }
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000001A,
                }
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000001B,
                }
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000001C,
                }
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000001D,
                }
                GpioInt (Edge, ActiveBoth, ExclusiveAndWake, PullNone, 0x0000,
                    "\\_SB.GPO3", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x004D
                    }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.LPEA._Y18._BAS, B0BA)  // _BAS: Base Address
                B0BA = LPE0 /* \LPE0 */
                CreateDWordField (RBUF, \_SB.PCI0.LPEA._Y19._BAS, B1BA)  // _BAS: Base Address
                B1BA = LPE1 /* \LPE1 */
                CreateDWordField (RBUF, \_SB.PCI0.LPEA._Y1A._BAS, B2BA)  // _BAS: Base Address
                B2BA = LPE2 /* \LPE2 */
                Return (RBUF) /* \_SB_.PCI0.LPEA.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((LPE0 != Zero) && (LPED == Zero))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, LPE1, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Device (ADMA)
            {
                Name (_HID, "ADMA22A8")  // _HID: Hardware ID
                Name (_CID, "ADMA22A8")  // _CID: Compatible ID
                Name (_DDN, "Intel(R) Audio  DMA0 - DMA0F28")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00200000,         // Address Length
                        _Y1B)
                    Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                    {
                        0x00000018,
                    }
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    CreateDWordField (RBUF, \_SB.PCI0.LPEA.ADMA._Y1B._BAS, B3BA)  // _BAS: Base Address
                    B3BA = LPE0 /* \LPE0 */
                    Return (RBUF) /* \_SB_.PCI0.LPEA.ADMA.RBUF */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((OSID == 0x02) || (OSID == 0x03))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
            }
        }

        Device (AMCR)
        {
            Name (_HID, "AMCR22A8")  // _HID: Hardware ID
            Name (_CID, "AMCR22A8")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) Audio Machine Driver - AMCR0F28")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                GPO2, 
                ^I2C2.RTEK
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                        "\\_SB.GPO3", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x004D
                        }
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0006
                        }
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0006
                        }
                })
                Return (RBUF) /* \_SB_.PCI0.AMCR._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LPES == 0x02)
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }

        Device (HAD0)
        {
            Name (_HID, "HAD022A8")  // _HID: Hardware ID
            Name (_CID, "HAD022A8")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) HDMI Audio Driver - HAD")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00065800,         // Address Base
                        0x00000140,         // Address Length
                        )
                })
                Return (RBUF) /* \_SB_.PCI0.HAD0._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (ADED == One)
                {
                    If ((OSID == 0x02) || (OSID == 0x03))
                    {
                        Return (0x0F)
                    }
                }

                Return (Zero)
            }
        }

        Device (UOTG)
        {
            Name (_HID, "808622B7")  // _HID: Hardware ID
            Name (_CID, "808622B7")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) USB On-The-Go Controller - 808622B7")  // _DDN: DOS Device Name
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00200000,         // Address Length
                    _Y1C)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y1D)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000001E,
                }
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000001F,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.UOTG._Y1C._BAS, B0BA)  // _BAS: Base Address
                B0BA = OTG0 /* \OTG0 */
                CreateDWordField (RBUF, \_SB.PCI0.UOTG._Y1D._BAS, B1BA)  // _BAS: Base Address
                B1BA = OTG1 /* \OTG1 */
                If (OTG0 != Zero)
                {
                    Return (RBUF) /* \_SB_.PCI0.UOTG.RBUF */
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((OTGD == One) || ((OTGM == One) || (OTG0 == Zero)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, OTG1, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }
        }

        Device (SPRC)
        {
            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y1E)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y1F)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y20)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y21)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y22)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y23)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y24)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y25)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y26)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y27)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y28)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y29)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y2A)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y2B)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y2C)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y2D)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y2E)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y2F)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y30)
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y1E._BAS, BR01)  // _BAS: Base Address
                BR01 = EM1A /* \EM1A */
                If ((BR01 != Zero) && (BR01 != 0xFFFFF000))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y1E._LEN, LN01)  // _LEN: Length
                    LN01 = EM1L /* \EM1L */
                }

                CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y1F._BAS, BR02)  // _BAS: Base Address
                BR02 = SI1A /* \SI1A */
                If ((BR02 != Zero) && (BR02 != 0xFFFFF000))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y1F._LEN, LN02)  // _LEN: Length
                    LN02 = SI1L /* \SI1L */
                }

                CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y20._BAS, BR03)  // _BAS: Base Address
                BR03 = SD1A /* \SD1A */
                If ((BR03 != Zero) && (BR03 != 0xFFFFF000))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y20._LEN, LN03)  // _LEN: Length
                    LN03 = SD1L /* \SD1L */
                }

                CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y21._BAS, BR04)  // _BAS: Base Address
                BR04 = D11A /* \D11A */
                If ((BR04 != Zero) && (BR04 != 0xFFFFF000))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y21._LEN, LN04)  // _LEN: Length
                    LN04 = D11L /* \D11L */
                }

                CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y22._BAS, BR05)  // _BAS: Base Address
                BR05 = P11A /* \P11A */
                If ((BR05 != Zero) && (BR05 != 0xFFFFF000))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y22._LEN, LN05)  // _LEN: Length
                    LN05 = P11L /* \P11L */
                }

                CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y23._BAS, BR06)  // _BAS: Base Address
                BR06 = P21A /* \P21A */
                If ((BR06 != Zero) && (BR06 != 0xFFFFF000))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y23._LEN, LN06)  // _LEN: Length
                    LN06 = P21L /* \P21L */
                }

                CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y24._BAS, BR07)  // _BAS: Base Address
                BR07 = U11A /* \U11A */
                If ((BR07 != Zero) && (BR07 != 0xFFFFF000))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y24._LEN, LN07)  // _LEN: Length
                    LN07 = U11L /* \U11L */
                }

                CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y25._BAS, BR08)  // _BAS: Base Address
                BR08 = U21A /* \U21A */
                If ((BR08 != Zero) && (BR08 != 0xFFFFF000))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y25._LEN, LN08)  // _LEN: Length
                    LN08 = U21L /* \U21L */
                }

                CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y26._BAS, BR09)  // _BAS: Base Address
                BR09 = SP1A /* \SP1A */
                If ((BR09 != Zero) && (BR09 != 0xFFFFF000))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y26._LEN, LN09)  // _LEN: Length
                    LN09 = SP1L /* \SP1L */
                }

                CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y27._BAS, BR10)  // _BAS: Base Address
                BR10 = S21A /* \S21A */
                If ((BR10 != Zero) && (BR10 != 0xFFFFF000))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y27._LEN, LN10)  // _LEN: Length
                    LN10 = S21L /* \S21L */
                }

                CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y28._BAS, BR11)  // _BAS: Base Address
                BR11 = S31A /* \S31A */
                If ((BR11 != Zero) && (BR11 != 0xFFFFF000))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y28._LEN, LN11)  // _LEN: Length
                    LN11 = S31L /* \S31L */
                }

                CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y29._BAS, BR12)  // _BAS: Base Address
                BR12 = D21A /* \D21A */
                If ((BR12 != Zero) && (BR12 != 0xFFFFF000))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y29._LEN, LN12)  // _LEN: Length
                    LN12 = D21L /* \D21L */
                }

                CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y2A._BAS, BR13)  // _BAS: Base Address
                BR13 = I11A /* \I11A */
                If ((BR13 != Zero) && (BR13 != 0xFFFFF000))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y2A._LEN, LN13)  // _LEN: Length
                    LN13 = I11L /* \I11L */
                }

                CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y2B._BAS, BR14)  // _BAS: Base Address
                BR14 = I21A /* \I21A */
                If ((BR14 != Zero) && (BR14 != 0xFFFFF000))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y2B._LEN, LN14)  // _LEN: Length
                    LN14 = I21L /* \I21L */
                }

                CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y2C._BAS, BR15)  // _BAS: Base Address
                BR15 = I31A /* \I31A */
                If ((BR15 != Zero) && (BR15 != 0xFFFFF000))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y2C._LEN, LN15)  // _LEN: Length
                    LN15 = I31L /* \I31L */
                }

                CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y2D._BAS, BR16)  // _BAS: Base Address
                BR16 = I41A /* \I41A */
                If ((BR16 != Zero) && (BR16 != 0xFFFFF000))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y2D._LEN, LN16)  // _LEN: Length
                    LN16 = I41L /* \I41L */
                }

                CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y2E._BAS, BR17)  // _BAS: Base Address
                BR17 = I51A /* \I51A */
                If ((BR17 != Zero) && (BR17 != 0xFFFFF000))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y2E._LEN, LN17)  // _LEN: Length
                    LN17 = I51L /* \I51L */
                }

                CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y2F._BAS, BR18)  // _BAS: Base Address
                BR18 = I61A /* \I61A */
                If ((BR18 != Zero) && (BR18 != 0xFFFFF000))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y2F._LEN, LN18)  // _LEN: Length
                    LN18 = I61L /* \I61L */
                }

                CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y30._BAS, BR19)  // _BAS: Base Address
                BR19 = I71A /* \I71A */
                If ((BR19 != Zero) && (BR19 != 0xFFFFF000))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SPRC._Y30._LEN, LN19)  // _LEN: Length
                    LN19 = I71L /* \I71L */
                }

                Return (RBUF) /* \_SB_.PCI0.SPRC.RBUF */
            }
        }

        Device (SEC0)
        {
            Name (_ADR, 0x001A0000)  // _ADR: Address
            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
            OperationRegion (SECS, PCI_Config, 0x64, 0x04)
            Field (SECS, DWordAcc, NoLock, Preserve)
            {
                SHAD,   32
            }

            OperationRegion (PMEB, PCI_Config, 0x84, 0x04)
            Field (PMEB, WordAcc, NoLock, Preserve)
            {
                Offset (0x01), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
            }

            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y31)
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                If ((OSYS == 0x07DF) && (PAVL != Zero))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SEC0._Y31._BAS, B0BA)  // _BAS: Base Address
                    CreateDWordField (RBUF, \_SB.PCI0.SEC0._Y31._LEN, B0LN)  // _LEN: Length
                    B0BA = PAVB /* \PAVB */
                    B0LN = PAVL /* \PAVL */
                    Return (RBUF) /* \_SB_.PCI0.SEC0.RBUF */
                }

                Return (ResourceTemplate ()
                {
                })
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                If (Arg0 == ToUUID ("1730e71d-e5dd-4a34-be57-4d76b6a2fe37"))
                {
                    If (Arg2 == Zero)
                    {
                        If (Arg1 == Zero)
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                             /* . */
                            })
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If (Arg2 == One)
                    {
                        While (One)
                        {
                            _T_0 = DerefOf (Arg3 [Zero])
                            If (_T_0 == Zero) {}
                            ElseIf (_T_0 == One)
                            {
                                If (CondRefOf (\_SB.SLPB))
                                {
                                    Notify (SLPB, 0x80) // Status Change
                                }
                            }
                            ElseIf (_T_0 == 0x02) {}
                            ElseIf (_T_0 == 0x03) {}
                            Break
                        }

                        Return (Zero)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             /* . */
                    })
                }
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (ISP3)
        {
            Name (_ADR, 0x00030000)  // _ADR: Address
            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
            {
                Return (Package (0x01)
                {
                    ID3C
                })
            }

            PowerResource (ID3C, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (ISPD == 0x02)
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                }
            }
        }

        Device (GFX0)
        {
            Name (_ADR, 0x00020000)  // _ADR: Address
            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
            Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
            {
                DSEN = (Arg0 & 0x07)
            }

            Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
            {
                If (ISPE == One)
                {
                    NDID = One
                }
                Else
                {
                    NDID = Zero
                }

                If (DIDL != Zero)
                {
                    DID1 = SDDL (DIDL)
                }

                If (DDL2 != Zero)
                {
                    DID2 = SDDL (DDL2)
                }

                If (DDL3 != Zero)
                {
                    DID3 = SDDL (DDL3)
                }

                If (DDL4 != Zero)
                {
                    DID4 = SDDL (DDL4)
                }

                If (DDL5 != Zero)
                {
                    DID5 = SDDL (DDL5)
                }

                If (DDL6 != Zero)
                {
                    DID6 = SDDL (DDL6)
                }

                If (DDL7 != Zero)
                {
                    DID7 = SDDL (DDL7)
                }

                If (DDL8 != Zero)
                {
                    DID8 = SDDL (DDL8)
                }

                If (NDID == One)
                {
                    Name (TMP1, Package (0x01)
                    {
                        0xFFFFFFFF
                    })
                    If (ISPE == One)
                    {
                        TMP1 [Zero] = 0x000222B8
                    }
                    Else
                    {
                        TMP1 [Zero] = (0x00010000 | DID1)
                    }

                    Return (TMP1) /* \_SB_.PCI0.GFX0._DOD.TMP1 */
                }

                If (NDID == 0x02)
                {
                    Name (TMP2, Package (0x02)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    If (ISPE == One)
                    {
                        TMP2 [Zero] = (0x00010000 | DID1)
                        TMP2 [One] = 0x000222B8
                    }
                    Else
                    {
                        TMP2 [Zero] = (0x00010000 | DID1)
                        TMP2 [One] = (0x00010000 | DID2)
                    }

                    Return (TMP2) /* \_SB_.PCI0.GFX0._DOD.TMP2 */
                }

                If (NDID == 0x03)
                {
                    Name (TMP3, Package (0x03)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    If (ISPE == One)
                    {
                        TMP3 [Zero] = (0x00010000 | DID1)
                        TMP3 [One] = (0x00010000 | DID2)
                        TMP3 [0x02] = 0x000222B8
                    }
                    Else
                    {
                        TMP3 [Zero] = (0x00010000 | DID1)
                        TMP3 [One] = (0x00010000 | DID2)
                        TMP3 [0x02] = (0x00010000 | DID3)
                    }

                    Return (TMP3) /* \_SB_.PCI0.GFX0._DOD.TMP3 */
                }

                If (NDID == 0x04)
                {
                    Name (TMP4, Package (0x04)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    If (ISPE == One)
                    {
                        TMP4 [Zero] = (0x00010000 | DID1)
                        TMP4 [One] = (0x00010000 | DID2)
                        TMP4 [0x02] = (0x00010000 | DID3)
                        TMP4 [0x03] = 0x000222B8
                    }
                    Else
                    {
                        TMP4 [Zero] = (0x00010000 | DID1)
                        TMP4 [One] = (0x00010000 | DID2)
                        TMP4 [0x02] = (0x00010000 | DID3)
                        TMP4 [0x03] = (0x00010000 | DID4)
                    }

                    Return (TMP4) /* \_SB_.PCI0.GFX0._DOD.TMP4 */
                }

                If (NDID == 0x05)
                {
                    Name (TMP5, Package (0x05)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    If (ISPE == One)
                    {
                        TMP5 [Zero] = (0x00010000 | DID1)
                        TMP5 [One] = (0x00010000 | DID2)
                        TMP5 [0x02] = (0x00010000 | DID3)
                        TMP5 [0x03] = (0x00010000 | DID4)
                        TMP5 [0x04] = 0x000222B8
                    }
                    Else
                    {
                        TMP5 [Zero] = (0x00010000 | DID1)
                        TMP5 [One] = (0x00010000 | DID2)
                        TMP5 [0x02] = (0x00010000 | DID3)
                        TMP5 [0x03] = (0x00010000 | DID4)
                        TMP5 [0x04] = (0x00010000 | DID5)
                    }

                    Return (TMP5) /* \_SB_.PCI0.GFX0._DOD.TMP5 */
                }

                If (NDID == 0x06)
                {
                    Name (TMP6, Package (0x06)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    If (ISPE == One)
                    {
                        TMP6 [Zero] = (0x00010000 | DID1)
                        TMP6 [One] = (0x00010000 | DID2)
                        TMP6 [0x02] = (0x00010000 | DID3)
                        TMP6 [0x03] = (0x00010000 | DID4)
                        TMP6 [0x04] = (0x00010000 | DID5)
                        TMP6 [0x05] = 0x000222B8
                    }
                    Else
                    {
                        TMP6 [Zero] = (0x00010000 | DID1)
                        TMP6 [One] = (0x00010000 | DID2)
                        TMP6 [0x02] = (0x00010000 | DID3)
                        TMP6 [0x03] = (0x00010000 | DID4)
                        TMP6 [0x04] = (0x00010000 | DID5)
                        TMP6 [0x05] = (0x00010000 | DID6)
                    }

                    Return (TMP6) /* \_SB_.PCI0.GFX0._DOD.TMP6 */
                }

                If (NDID == 0x07)
                {
                    Name (TMP7, Package (0x07)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    If (ISPE == One)
                    {
                        TMP7 [Zero] = (0x00010000 | DID1)
                        TMP7 [One] = (0x00010000 | DID2)
                        TMP7 [0x02] = (0x00010000 | DID3)
                        TMP7 [0x03] = (0x00010000 | DID4)
                        TMP7 [0x04] = (0x00010000 | DID5)
                        TMP7 [0x05] = (0x00010000 | DID6)
                        TMP7 [0x06] = 0x000222B8
                    }
                    Else
                    {
                        TMP7 [Zero] = (0x00010000 | DID1)
                        TMP7 [One] = (0x00010000 | DID2)
                        TMP7 [0x02] = (0x00010000 | DID3)
                        TMP7 [0x03] = (0x00010000 | DID4)
                        TMP7 [0x04] = (0x00010000 | DID5)
                        TMP7 [0x05] = (0x00010000 | DID6)
                        TMP7 [0x06] = (0x00010000 | DID7)
                    }

                    Return (TMP7) /* \_SB_.PCI0.GFX0._DOD.TMP7 */
                }

                If (NDID > 0x07)
                {
                    Name (TMP8, Package (0x08)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    If (ISPE == One)
                    {
                        TMP8 [Zero] = (0x00010000 | DID1)
                        TMP8 [One] = (0x00010000 | DID2)
                        TMP8 [0x02] = (0x00010000 | DID3)
                        TMP8 [0x03] = (0x00010000 | DID4)
                        TMP8 [0x04] = (0x00010000 | DID5)
                        TMP8 [0x05] = (0x00010000 | DID6)
                        TMP8 [0x06] = (0x00010000 | DID7)
                        TMP8 [0x07] = 0x000222B8
                    }
                    Else
                    {
                        TMP8 [Zero] = (0x00010000 | DID1)
                        TMP8 [One] = (0x00010000 | DID2)
                        TMP8 [0x02] = (0x00010000 | DID3)
                        TMP8 [0x03] = (0x00010000 | DID4)
                        TMP8 [0x04] = (0x00010000 | DID5)
                        TMP8 [0x05] = (0x00010000 | DID6)
                        TMP8 [0x06] = (0x00010000 | DID7)
                        TMP8 [0x07] = (0x00010000 | DID8)
                    }

                    Return (TMP8) /* \_SB_.PCI0.GFX0._DOD.TMP8 */
                }

                Return (Package (0x02)
                {
                    0x0400, 
                    0x000222B8
                })
            }

            Device (DD01)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If ((0x0F00 & DID1) == 0x0400)
                    {
                        EDPV = One
                        DIDX = DID1 /* \DID1 */
                        Return (One)
                    }

                    If (DID1 == Zero)
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID1))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    Return (CDDS (DID1))
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID1))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If ((Arg0 & 0xC0000000) == 0xC0000000)
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }
            }

            Device (DD02)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If ((0x0F00 & DID2) == 0x0400)
                    {
                        EDPV = 0x02
                        DIDX = DID2 /* \DID2 */
                        Return (0x02)
                    }

                    If (DID2 == Zero)
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID2))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    Return (CDDS (DID2))
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID2))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If ((Arg0 & 0xC0000000) == 0xC0000000)
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }
            }

            Device (DD03)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If ((0x0F00 & DID3) == 0x0400)
                    {
                        EDPV = 0x03
                        DIDX = DID3 /* \DID3 */
                        Return (0x03)
                    }

                    If (DID3 == Zero)
                    {
                        Return (0x03)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID3))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (DID3 == Zero)
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID3))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID3))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If ((Arg0 & 0xC0000000) == 0xC0000000)
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }
            }

            Device (DD04)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If ((0x0F00 & DID4) == 0x0400)
                    {
                        EDPV = 0x04
                        DIDX = DID4 /* \DID4 */
                        Return (0x04)
                    }

                    If (DID4 == Zero)
                    {
                        Return (0x04)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID4))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (DID4 == Zero)
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID4))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID4))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If ((Arg0 & 0xC0000000) == 0xC0000000)
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }
            }

            Device (DD05)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If ((0x0F00 & DID5) == 0x0400)
                    {
                        EDPV = 0x05
                        DIDX = DID5 /* \DID5 */
                        Return (0x05)
                    }

                    If (DID5 == Zero)
                    {
                        Return (0x05)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID5))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (DID5 == Zero)
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID5))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID5))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If ((Arg0 & 0xC0000000) == 0xC0000000)
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }
            }

            Device (DD06)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If ((0x0F00 & DID6) == 0x0400)
                    {
                        EDPV = 0x06
                        DIDX = DID6 /* \DID6 */
                        Return (0x06)
                    }

                    If (DID6 == Zero)
                    {
                        Return (0x06)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID6))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (DID6 == Zero)
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID6))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID6))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If ((Arg0 & 0xC0000000) == 0xC0000000)
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }
            }

            Device (DD07)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If ((0x0F00 & DID7) == 0x0400)
                    {
                        EDPV = 0x07
                        DIDX = DID7 /* \DID7 */
                        Return (0x07)
                    }

                    If (DID7 == Zero)
                    {
                        Return (0x07)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID7))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (DID7 == Zero)
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID7))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID7))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If ((Arg0 & 0xC0000000) == 0xC0000000)
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }
            }

            Device (DD08)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If ((0x0F00 & DID8) == 0x0400)
                    {
                        EDPV = 0x08
                        DIDX = DID8 /* \DID8 */
                        Return (0x08)
                    }

                    If (DID8 == Zero)
                    {
                        Return (0x08)
                    }
                    Else
                    {
                        Return ((0xFFFF & DID8))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (DID8 == Zero)
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID8))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID8))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If ((Arg0 & 0xC0000000) == 0xC0000000)
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }
            }

            Device (DD1F)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (EDPV == Zero)
                    {
                        Return (0x1F)
                    }
                    Else
                    {
                        Return ((0xFFFF & DIDX))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (EDPV == Zero)
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (CDDS (DIDX))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DIDX))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If ((Arg0 & 0xC0000000) == 0xC0000000)
                    {
                        CSTE = NSTE /* \NSTE */
                    }
                }

                Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                {
                    If (OSYS >= 0x07DC)
                    {
                        Return (Package (0x67)
                        {
                            0x64, 
                            0x64, 
                            Zero, 
                            One, 
                            0x02, 
                            0x03, 
                            0x04, 
                            0x05, 
                            0x06, 
                            0x07, 
                            0x08, 
                            0x09, 
                            0x0A, 
                            0x0B, 
                            0x0C, 
                            0x0D, 
                            0x0E, 
                            0x0F, 
                            0x10, 
                            0x11, 
                            0x12, 
                            0x13, 
                            0x14, 
                            0x15, 
                            0x16, 
                            0x17, 
                            0x18, 
                            0x19, 
                            0x1A, 
                            0x1B, 
                            0x1C, 
                            0x1D, 
                            0x1E, 
                            0x1F, 
                            0x20, 
                            0x21, 
                            0x22, 
                            0x23, 
                            0x24, 
                            0x25, 
                            0x26, 
                            0x27, 
                            0x28, 
                            0x29, 
                            0x2A, 
                            0x2B, 
                            0x2C, 
                            0x2D, 
                            0x2E, 
                            0x2F, 
                            0x30, 
                            0x31, 
                            0x32, 
                            0x33, 
                            0x34, 
                            0x35, 
                            0x36, 
                            0x37, 
                            0x38, 
                            0x39, 
                            0x3A, 
                            0x3B, 
                            0x3C, 
                            0x3D, 
                            0x3E, 
                            0x3F, 
                            0x40, 
                            0x41, 
                            0x42, 
                            0x43, 
                            0x44, 
                            0x45, 
                            0x46, 
                            0x47, 
                            0x48, 
                            0x49, 
                            0x4A, 
                            0x4B, 
                            0x4C, 
                            0x4D, 
                            0x4E, 
                            0x4F, 
                            0x50, 
                            0x51, 
                            0x52, 
                            0x53, 
                            0x54, 
                            0x55, 
                            0x56, 
                            0x57, 
                            0x58, 
                            0x59, 
                            0x5A, 
                            0x5B, 
                            0x5C, 
                            0x5D, 
                            0x5E, 
                            0x5F, 
                            0x60, 
                            0x61, 
                            0x62, 
                            0x63, 
                            0x64
                        })
                    }

                    Return (Package (0x12)
                    {
                        0x64, 
                        0x23, 
                        0x05, 
                        0x0A, 
                        0x14, 
                        0x19, 
                        0x1E, 
                        0x23, 
                        0x28, 
                        0x2D, 
                        0x32, 
                        0x37, 
                        0x3C, 
                        0x41, 
                        0x46, 
                        0x50, 
                        0x5A, 
                        0x64
                    })
                }

                Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                {
                    If ((Arg0 >= Zero) && (Arg0 <= 0x64))
                    {
                        IBCM (Arg0)
                        UCMS (0x14)
                        ^^^LPCB.EC.BLCL ()
                        BRTL = Arg0
                    }
                }

                Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                {
                    Return (BRTL) /* \BRTL */
                }

                Method (_DDC, 1, NotSerialized)  // _DDC: Display Data Current
                {
                    If (Arg0 == One)
                    {
                        Return (PEDI) /* \PEDI */
                    }
                    ElseIf (Arg0 == 0x02)
                    {
                        Return (PEDI) /* \PEDI */
                    }

                    Return (Zero)
                }
            }

            Method (SDDL, 1, NotSerialized)
            {
                NDID++
                Local0 = (Arg0 & 0x0F0F)
                Local1 = (0x80000000 | Local0)
                If (DIDL == Local0)
                {
                    Return (Local1)
                }

                If (DDL2 == Local0)
                {
                    Return (Local1)
                }

                If (DDL3 == Local0)
                {
                    Return (Local1)
                }

                If (DDL4 == Local0)
                {
                    Return (Local1)
                }

                If (DDL5 == Local0)
                {
                    Return (Local1)
                }

                If (DDL6 == Local0)
                {
                    Return (Local1)
                }

                If (DDL7 == Local0)
                {
                    Return (Local1)
                }

                If (DDL8 == Local0)
                {
                    Return (Local1)
                }

                Return (Zero)
            }

            Method (CDDS, 1, NotSerialized)
            {
                Local0 = (Arg0 & 0x0F0F)
                If (Zero == Local0)
                {
                    Return (0x1D)
                }

                If (CADL == Local0)
                {
                    Return (0x1F)
                }

                If (CAL2 == Local0)
                {
                    Return (0x1F)
                }

                If (CAL3 == Local0)
                {
                    Return (0x1F)
                }

                If (CAL4 == Local0)
                {
                    Return (0x1F)
                }

                If (CAL5 == Local0)
                {
                    Return (0x1F)
                }

                If (CAL6 == Local0)
                {
                    Return (0x1F)
                }

                If (CAL7 == Local0)
                {
                    Return (0x1F)
                }

                If (CAL8 == Local0)
                {
                    Return (0x1F)
                }

                Return (0x1D)
            }

            Method (NDDS, 1, NotSerialized)
            {
                Local0 = (Arg0 & 0x0F0F)
                If (Zero == Local0)
                {
                    Return (Zero)
                }

                If (NADL == Local0)
                {
                    Return (One)
                }

                If (NDL2 == Local0)
                {
                    Return (One)
                }

                If (NDL3 == Local0)
                {
                    Return (One)
                }

                If (NDL4 == Local0)
                {
                    Return (One)
                }

                If (NDL5 == Local0)
                {
                    Return (One)
                }

                If (NDL6 == Local0)
                {
                    Return (One)
                }

                If (NDL7 == Local0)
                {
                    Return (One)
                }

                If (NDL8 == Local0)
                {
                    Return (One)
                }

                Return (Zero)
            }

            OperationRegion (IGDP, PCI_Config, Zero, 0x0100)
            Field (IGDP, AnyAcc, NoLock, Preserve)
            {
                GVID,   32, 
                Offset (0x10), 
                MADR,   32, 
                Offset (0x50), 
                    ,   1, 
                GIVD,   1, 
                    ,   1, 
                GUMA,   5, 
                Offset (0x52), 
                Offset (0x54), 
                    ,   4, 
                GMFN,   1, 
                Offset (0x58), 
                Offset (0x5C), 
                GSTM,   32, 
                Offset (0xE0), 
                GSSE,   1, 
                GSSB,   14, 
                GSES,   1, 
                Offset (0xE4), 
                ASLE,   8, 
                Offset (0xE8), 
                Offset (0xFC), 
                ASLS,   32
            }

            Method (GTTM, 0, Serialized)
            {
                If (GVID == 0xFFFFFFFF)
                {
                    Return (ABTR) /* \ABTR */
                }
                Else
                {
                    Return (MADR) /* \_SB_.PCI0.GFX0.MADR */
                }
            }

            OperationRegion (IGMM, SystemMemory, GTTM (), 0x3000)
            Field (IGMM, AnyAcc, NoLock, Preserve)
            {
                Offset (0x20C8), 
                    ,   4, 
                DCFE,   4
            }

            OperationRegion (IGDM, SystemMemory, ASLB, 0x2000)
            Field (IGDM, AnyAcc, NoLock, Preserve)
            {
                SIGN,   128, 
                SIZE,   32, 
                OVER,   32, 
                SVER,   256, 
                VVER,   128, 
                GVER,   128, 
                MBOX,   32, 
                DMOD,   32, 
                Offset (0x100), 
                DRDY,   32, 
                CSTS,   32, 
                CEVT,   32, 
                Offset (0x120), 
                DIDL,   32, 
                DDL2,   32, 
                DDL3,   32, 
                DDL4,   32, 
                DDL5,   32, 
                DDL6,   32, 
                DDL7,   32, 
                DDL8,   32, 
                CPDL,   32, 
                CPL2,   32, 
                CPL3,   32, 
                CPL4,   32, 
                CPL5,   32, 
                CPL6,   32, 
                CPL7,   32, 
                CPL8,   32, 
                CAD1,   32, 
                CAL2,   32, 
                CAL3,   32, 
                CAL4,   32, 
                CAL5,   32, 
                CAL6,   32, 
                CAL7,   32, 
                CAL8,   32, 
                NADL,   32, 
                NDL2,   32, 
                NDL3,   32, 
                NDL4,   32, 
                NDL5,   32, 
                NDL6,   32, 
                NDL7,   32, 
                NDL8,   32, 
                ASLP,   32, 
                TIDX,   32, 
                CHPD,   32, 
                CLID,   32, 
                CDCK,   32, 
                SXSW,   32, 
                EVTS,   32, 
                CNOT,   32, 
                NRDY,   32, 
                Offset (0x200), 
                SCIE,   1, 
                GEFC,   4, 
                GXFC,   3, 
                GESF,   8, 
                Offset (0x204), 
                PARM,   32, 
                DSLP,   32, 
                Offset (0x300), 
                ARDY,   32, 
                ASLC,   32, 
                TCHE,   32, 
                ALSI,   32, 
                BCLP,   32, 
                PFIT,   32, 
                CBLV,   32, 
                BCLM,   320, 
                CPFM,   32, 
                EPFM,   32, 
                PLUT,   592, 
                PFMB,   32, 
                CCDV,   32, 
                PCFT,   32, 
                Offset (0x400), 
                GVD1,   49152, 
                PHED,   32, 
                BDDC,   2048
            }

            Name (DBTB, Package (0x15)
            {
                Zero, 
                0x07, 
                0x38, 
                0x01C0, 
                0x0E00, 
                0x3F, 
                0x01C7, 
                0x0E07, 
                0x01F8, 
                0x0E38, 
                0x0FC0, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x7000, 
                0x7007, 
                0x7038, 
                0x71C0, 
                0x7E00
            })
            Name (CDCT, Package (0x06)
            {
                Package (0x01)
                {
                    0xA0
                }, 

                Package (0x01)
                {
                    0xC8
                }, 

                Package (0x01)
                {
                    0x010B
                }, 

                Package (0x01)
                {
                    0x0140
                }, 

                Package (0x01)
                {
                    0x0164
                }, 

                Package (0x01)
                {
                    0x0190
                }
            })
            Name (SUCC, One)
            Name (NVLD, 0x02)
            Name (CRIT, 0x04)
            Name (NCRT, 0x06)
            Method (GSCI, 0, Serialized)
            {
                Method (GBDA, 0, Serialized)
                {
                    If (GESF == Zero)
                    {
                        PARM = 0x0279
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == One)
                    {
                        PARM = 0x0240
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x04)
                    {
                        PARM &= 0xEFFF0000
                        PARM &= (DerefOf (DBTB [IBTT]) << 0x10)
                        PARM |= IBTT /* \_SB_.PCI0.GFX0.PARM */
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x05)
                    {
                        If (^^^^LID._LID ())
                        {
                            LIDS = One
                        }
                        Else
                        {
                            LIDS = Zero
                        }

                        PARM = IPSC /* \IPSC */
                        PARM |= (IPAT << 0x08)
                        PARM += 0x0100
                        PARM |= (LIDS << 0x10)
                        PARM += 0x00010000
                        PARM |= (IBLC << 0x12)
                        PARM |= (IBIA << 0x14)
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x06)
                    {
                        PARM = ITVF /* \ITVF */
                        PARM |= (ITVM << 0x04)
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x07)
                    {
                        PARM = GIVD /* \_SB_.PCI0.GFX0.GIVD */
                        PARM ^= One
                        PARM |= (GMFN << One)
                        PARM |= 0x1800
                        PARM |= (IDMS << 0x11)
                        PARM |= (DerefOf (CDCT [DCFE]) << 0x15) /* \_SB_.PCI0.GFX0.PARM */
                        GESF = One
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x0A)
                    {
                        PARM = Zero
                        If (ISSC)
                        {
                            PARM |= 0x03
                        }

                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    GESF = Zero
                    Return (CRIT) /* \_SB_.PCI0.GFX0.CRIT */
                }

                Method (SBCB, 0, Serialized)
                {
                    If (GESF == Zero)
                    {
                        PARM = Zero
                        If (PFLV == FMBL)
                        {
                            PARM = 0x000F87FD
                        }

                        If (PFLV == FDTP)
                        {
                            PARM = 0x000F87BD
                        }

                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == One)
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x03)
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x04)
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x05)
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x06)
                    {
                        ITVF = (PARM & 0x0F)
                        ITVM = ((PARM & 0xF0) >> 0x04)
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x07)
                    {
                        If (PARM == Zero)
                        {
                            Local0 = CLID /* \_SB_.PCI0.GFX0.CLID */
                            If (0x80000000 & Local0)
                            {
                                CLID &= 0x0F
                                GLID (CLID)
                            }
                        }

                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x08)
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x09)
                    {
                        IBTT = (PARM & 0xFF)
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x0A)
                    {
                        IPSC = (PARM & 0xFF)
                        If ((PARM >> 0x08) & 0xFF)
                        {
                            IPAT = ((PARM >> 0x08) & 0xFF)
                            IPAT--
                        }

                        IBLC = ((PARM >> 0x12) & 0x03)
                        IBIA = ((PARM >> 0x14) & 0x07)
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x0B)
                    {
                        IF1E = ((PARM >> One) & One)
                        IDMS = ((PARM >> 0x11) & 0x0F)
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x10)
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x11)
                    {
                        PARM = (LIDS << 0x08)
                        PARM += 0x0100
                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x12)
                    {
                        If (PARM & One)
                        {
                            If ((PARM >> One) == One)
                            {
                                ISSC = One
                            }
                            Else
                            {
                                GESF = Zero
                                Return (CRIT) /* \_SB_.PCI0.GFX0.CRIT */
                            }
                        }
                        Else
                        {
                            ISSC = Zero
                        }

                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x13)
                    {
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (GESF == 0x14)
                    {
                        PAVP = (PARM & 0x0F)
                        GESF = Zero
                        PARM = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    GESF = Zero
                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }

                If (GVID != 0xFFFFFFFF)
                {
                    If (GEFC == 0x04)
                    {
                        GXFC = GBDA ()
                    }

                    If (GEFC == 0x06)
                    {
                        GXFC = SBCB ()
                    }

                    GEFC = Zero
                    GSSE = Zero
                    SCIE = Zero
                }

                SCIS = One
                Return (Zero)
            }

            Method (PDRD, 0, NotSerialized)
            {
                If (!DRDY)
                {
                    Sleep (ASLP)
                }

                Return (!DRDY)
            }

            Method (PSTS, 0, NotSerialized)
            {
                If (CSTS > 0x02)
                {
                    Sleep (ASLP)
                }

                Return ((CSTS == 0x03))
            }

            Method (GNOT, 2, NotSerialized)
            {
                If (PDRD ())
                {
                    Return (One)
                }

                CEVT = Arg0
                CSTS = 0x03
                If ((CHPD == Zero) && (Arg1 == Zero))
                {
                    If ((OSYS > 0x07D0) || (OSYS < 0x07D6))
                    {
                        Notify (PCI0, Arg1)
                    }
                    Else
                    {
                        Notify (GFX0, Arg1)
                    }
                }

                Notify (GFX0, 0x80) // Status Change
                Return (Zero)
            }

            Method (GHDS, 1, NotSerialized)
            {
                TIDX = Arg0
                Return (GNOT (One, Zero))
            }

            Method (GLID, 1, NotSerialized)
            {
                CLID = Arg0
                Return (GNOT (0x02, Zero))
            }

            Method (GDCK, 1, NotSerialized)
            {
                CDCK = Arg0
                Return (GNOT (0x04, Zero))
            }

            Method (PARD, 0, NotSerialized)
            {
                If (!ARDY)
                {
                    Sleep (ASLP)
                }

                Return (!ARDY)
            }

            Method (AINT, 2, NotSerialized)
            {
                If (!(TCHE & (One << Arg0)))
                {
                    Return (One)
                }

                If (PARD ())
                {
                    Return (One)
                }

                If (Arg0 == 0x02)
                {
                    If (CPFM)
                    {
                        Local0 = (CPFM & 0x0F)
                        Local1 = (EPFM & 0x0F)
                        If (Local0 == One)
                        {
                            If (Local1 & 0x06)
                            {
                                PFIT = 0x06
                            }
                            ElseIf (Local1 & 0x08)
                            {
                                PFIT = 0x08
                            }
                            Else
                            {
                                PFIT = One
                            }
                        }

                        If (Local0 == 0x06)
                        {
                            If (Local1 & 0x08)
                            {
                                PFIT = 0x08
                            }
                            ElseIf (Local1 & One)
                            {
                                PFIT = One
                            }
                            Else
                            {
                                PFIT = 0x06
                            }
                        }

                        If (Local0 == 0x08)
                        {
                            If (Local1 & One)
                            {
                                PFIT = One
                            }
                            ElseIf (Local1 & 0x06)
                            {
                                PFIT = 0x06
                            }
                            Else
                            {
                                PFIT = 0x08
                            }
                        }
                    }
                    Else
                    {
                        PFIT ^= 0x07
                    }

                    PFIT |= 0x80000000
                    ASLC = 0x04
                }
                ElseIf (Arg0 == One)
                {
                    BCLP = ((Arg1 * 0xFF) / 0x64)
                    BCLP |= 0x80000000
                    ASLC = 0x02
                }
                ElseIf (Arg0 == Zero)
                {
                    ALSI = Arg1
                    ASLC = One
                }
                Else
                {
                    Return (One)
                }

                ASLE = One
                Return (Zero)
            }

            Method (SCIP, 0, NotSerialized)
            {
                If (OVER != Zero)
                {
                    Return (!GSMI)
                }

                Return (Zero)
            }

            Device (ISP0)
            {
                Name (_ADR, 0x22B8)  // _ADR: Address
                Name (_DDN, "CHV ISP - 808622B8")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((ISPA != Zero) && (ISPD == One))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Name (SBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00400000,         // Address Length
                        _Y32)
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    CreateDWordField (SBUF, \_SB.PCI0.GFX0.ISP0._Y32._BAS, B0BA)  // _BAS: Base Address
                    B0BA = ISPA /* \ISPA */
                    Return (SBUF) /* \_SB_.PCI0.GFX0.ISP0.SBUF */
                }

                Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                {
                }

                Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                {
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (Arg0 == One)
                    {
                        Return (One)
                    }
                    ElseIf (Arg0 == 0x02)
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }

    Scope (_PR)
    {
        Processor (CPU0, 0x01, 0x00000000, 0x00) {}
        Processor (CPU1, 0x02, 0x00000000, 0x00) {}
        Processor (CPU2, 0x03, 0x00000000, 0x00) {}
        Processor (CPU3, 0x04, 0x00000000, 0x00) {}
    }

    Name (PICM, Zero)
    Mutex (MUTX, 0x00)
    OperationRegion (PRT0, SystemIO, 0x80, 0x04)
    Field (PRT0, DWordAcc, Lock, Preserve)
    {
        P80H,   32
    }

    Method (P8XH, 2, Serialized)
    {
        If (Arg0 == Zero)
        {
            P80D = ((P80D & 0xFFFFFF00) | Arg1)
        }
        ElseIf (Arg0 == One)
        {
            P80D = ((P80D & 0xFFFF00FF) | (Arg1 << 0x08))
        }
        ElseIf (Arg0 == 0x02)
        {
            P80D = ((P80D & 0xFF00FFFF) | (Arg1 << 0x10))
        }
        ElseIf (Arg0 == 0x03)
        {
            P80D = ((P80D & 0x00FFFFFF) | (Arg1 << 0x18))
        }

        P80H = P80D /* \P80D */
    }

    OperationRegion (SPRT, SystemIO, 0xB2, 0x02)
    Field (SPRT, ByteAcc, Lock, Preserve)
    {
        SSMP,   8
    }

    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        GPIC = Arg0
        PICM = Arg0
    }

    OperationRegion (SWC0, SystemIO, 0x0610, 0x0F)
    Field (SWC0, ByteAcc, NoLock, Preserve)
    {
        G1S,    8, 
        Offset (0x04), 
        G1E,    8, 
        Offset (0x0A), 
        G1S2,   8, 
        G1S3,   8
    }

    OperationRegion (SWC1, SystemIO, PMBS, 0x2C)
    Field (SWC1, DWordAcc, NoLock, Preserve)
    {
        Offset (0x20), 
        G0S,    32, 
        Offset (0x28), 
        G0EN,   32
    }

    OperationRegion (SCWS, SystemMemory, (GBA1 | 0x0200), 0x04)
    Field (SCWS, DWordAcc, Lock, Preserve)
    {
            ,   9, 
        SOCW,   1
    }

    OperationRegion (TPIS, SystemMemory, (GBA3 | 0x0204), 0x04)
    Field (TPIS, DWordAcc, Lock, Preserve)
    {
            ,   14, 
        PADW,   1
    }

    OperationRegion (EXCO, SystemIO, 0x72, 0x02)
    Field (EXCO, ByteAcc, NoLock, Preserve)
    {
        INDT,   8, 
        DATT,   8
    }

    IndexField (INDT, DATT, ByteAcc, NoLock, Preserve)
    {
        Offset (0x30), 
        TES1,   32, 
        TES2,   8, 
        Offset (0xF0), 
        QDD1,   8
    }

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        P80H = Arg0
        XMIO = (XMMA & 0xFFFFFFF0)
        If (\_SB.PCI0.LPCB.EC.HFNE)
        {
            If (~(Arg0 == 0x03))
            {
                FNLS = Zero
            }
        }

        If ((Arg0 == 0x03) || (Arg0 == 0x04))
        {
            \_SB.PCI0.LPCB.EC.S3FG = Zero
            \_SB.PCI0.LPCB.EC.S3FG = One
            Sleep (0xC8)
        }

        G1S3 = Ones
        G1S2 = Ones
        G1S = One
        G1E = One
        G0S = Ones
        SOCW = One
        PADW = One
        If ((Arg0 == 0x04) || (Arg0 == 0x05))
        {
            If (CondRefOf (\_SB.TPM.CMOR))
            {
                \_SB.TPM.CMOR ()
            }
        }
    }

    Name (XMIO, Zero)
    OperationRegion (XPEB, SystemMemory, (PEBS + 0x000A0000), 0x78)
    Field (XPEB, DWordAcc, NoLock, Preserve)
    {
        Offset (0x04), 
            ,   1, 
        XMSE,   1, 
        Offset (0x10), 
        XMMA,   32, 
        Offset (0x74), 
        XHDX,   2
    }

    Method (XWAM, 1, Serialized)
    {
        If (XPME == One)
        {
            If ((XMIO != Zero) && (XMIO != 0xFFFFFFF0))
            {
                Local0 = XHDX /* \XHDX */
                Local1 = XMMA /* \XMMA */
                Local2 = XMSE /* \XMSE */
                XMMA = XMIO /* \XMIO */
                XHDX = Zero
                XMSE = One
                OperationRegion (XWAM, SystemMemory, (XMIO + 0x80A4), 0x04)
                Field (XWAM, DWordAcc, NoLock, Preserve)
                {
                        ,   28, 
                    PMEC,   1
                }

                PMEC = One
                PMEB = One
                XMSE = Local2
                XMMA = Local1
                XHDX = Local0
            }
        }
    }

    Method (_WAK, 1, Serialized)  // _WAK: Wake
    {
        P80H = 0xAB
        If (Arg0 == 0x03)
        {
            XWAM (0xAE)
        }

        SS4F = Zero
        If (NEXP)
        {
            If (OSCC & 0x02)
            {
                \_SB.PCI0.NHPG ()
            }

            If (OSCC & 0x04)
            {
                \_SB.PCI0.NPME ()
            }
        }

        If (Arg0 == 0x03)
        {
            \_SB.PCI0.SEC0.SHAD = One
        }

        If ((BDID == CHRB) | (BDID == CIRB))
        {
            PNOT ()
        }
        ElseIf (PFLV == FMBL)
        {
            LIDS = \_SB.PCI0.LPCB.EC.HPLD
            If (IGDS)
            {
                If (LIDS == Zero)
                {
                    \_SB.PCI0.GFX0.CLID = 0x80000000
                }

                If (LIDS == One)
                {
                    \_SB.PCI0.GFX0.CLID = 0x80000003
                }
            }

            If (Arg0 == 0x04)
            {
                Notify (\_SB.LID, 0x80) // Status Change
            }

            If ((Arg0 == 0x03) || (Arg0 == 0x04))
            {
                If (PFLV == FMBL)
                {
                    If (Arg0 == 0x04)
                    {
                        PNOT ()
                    }
                }

                If (CFGD & 0x01000000) {}
                If (OSYS == 0x07D2)
                {
                    If (CFGD & One)
                    {
                        If (\_PR.CPU0._PPC > Zero)
                        {
                            \_PR.CPU0._PPC -= One
                            PNOT ()
                            \_PR.CPU0._PPC += One
                            PNOT ()
                        }
                        Else
                        {
                            \_PR.CPU0._PPC += One
                            PNOT ()
                            \_PR.CPU0._PPC -= One
                            PNOT ()
                        }
                    }
                }
            }

            If (Arg0 == 0x04)
            {
                If (OSYS <= 0x07D9)
                {
                    If (TSMT == One)
                    {
                        \_SB.PCI0.LPCB.EC.TPSP = Zero
                    }
                }
            }

            If (Arg0 == 0x03)
            {
                If (OSYS <= 0x07D9)
                {
                    \_SB.PCI0.LPCB.EC.HKEY.HKS3 ()
                }
            }

            If ((Arg0 == 0x03) || (Arg0 == 0x04))
            {
                AUDS (Zero, Zero)
            }

            If (OSYS >= 0x07DC)
            {
                \_SB.PCI0.LPCB.EC.HKEY.WGIN ()
            }

            \_SB.BASC = One
            If (Arg0 < 0x04)
            {
                If (((Local1 = (\_SB.PCI0.LPCB.EC.HB0S & 0x0F)) == Zero) && !\_SB.PCI0.LPCB.EC.ACPW)
                {
                    \_SB.PCI0.LPCB.EC.ETHB = 0x0A
                }
            }

            Local0 = (\_SB.PCI0.LPCB.EC.YGHM & 0x7F)
            If ((Local0 >= 0x03) && (Local0 <= 0x05))
            {
                LKLS = One
                AUDS (0x04, Zero)
            }

            If ((Local0 >= Zero) && (Local0 <= 0x02))
            {
                LKLS = Zero
                AUDS (0x04, One)
            }
        }

        Return (Package (0x02)
        {
            Zero, 
            Zero
        })
    }

    Method (PNOT, 0, Serialized)
    {
        If (MPEN)
        {
            If (PDC0 & 0x08)
            {
                Notify (\_PR.CPU0, 0x80) // Performance Capability Change
                If (PDC0 & 0x10)
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU0, 0x81) // C-State Change
                }
            }

            If (PDC1 & 0x08)
            {
                Notify (\_PR.CPU1, 0x80) // Performance Capability Change
                If (PDC1 & 0x10)
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU1, 0x81) // C-State Change
                }
            }

            If (PDC2 & 0x08)
            {
                Notify (\_PR.CPU2, 0x80) // Performance Capability Change
                If (PDC2 & 0x10)
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU2, 0x81) // C-State Change
                }
            }

            If (PDC3 & 0x08)
            {
                Notify (\_PR.CPU3, 0x80) // Performance Capability Change
                If (PDC3 & 0x10)
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU3, 0x81) // C-State Change
                }
            }
        }
        Else
        {
            Notify (\_PR.CPU0, 0x80) // Performance Capability Change
            Sleep (0x64)
            Notify (\_PR.CPU0, 0x81) // C-State Change
        }

        If (DPTE == One)
        {
            If (CHGR == One)
            {
                Notify (\_SB.TCHG, 0x80) // Status Change
            }
        }
    }

    Scope (_SB)
    {
        Scope (PCI0)
        {
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                OSYS = 0x07D0
                If (CondRefOf (\_OSI, Local0))
                {
                    If (_OSI ("Windows 2001"))
                    {
                        OSYS = 0x07D1
                    }

                    If (_OSI ("Windows 2001 SP1"))
                    {
                        OSYS = 0x07D1
                    }

                    If (_OSI ("Windows 2001 SP2"))
                    {
                        OSYS = 0x07D2
                    }

                    If (_OSI ("Windows 2006"))
                    {
                        OSYS = 0x07D6
                    }

                    If (_OSI ("Windows 2009"))
                    {
                        OSYS = 0x07D9
                    }

                    If (_OSI ("Windows 2012"))
                    {
                        OSYS = 0x07DC
                    }

                    If (_OSI ("Windows 2013"))
                    {
                        OSYS = 0x07DD
                    }

                    If (_OSI ("Windows 2015"))
                    {
                        OSYS = 0x07DF
                    }

                    If (OSYS == 0x07D9)
                    {
                        ^GFX0.GSES = One
                    }
                }
            }

            Method (NHPG, 0, Serialized)
            {
            }

            Method (NPME, 0, Serialized)
            {
            }
        }

        Device (GPED)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT0002" /* Virtual GPIO Controller */)  // _HID: Hardware ID
            Name (_CID, "INT0002" /* Virtual GPIO Controller */)  // _CID: Compatible ID
            Name (_DDN, "Virtual GPIO controller")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (INST, One)
            Name (XTMP, Zero)
            OperationRegion (SCIS, SystemMemory, 0xFED030C0, 0x04)
            Field (SCIS, DWordAcc, NoLock, Preserve)
            {
                    ,   1, 
                LHAD,   1, 
                LATA,   1, 
                LDIO,   1, 
                LARD,   1, 
                LIO1,   1, 
                LCEP,   1, 
                LANB,   1, 
                LHCI,   1, 
                LOTG,   1, 
                LECI,   1, 
                LHSI,   1
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (Arg0 == ToUUID ("8b38b469-6f95-4b08-9b02-2defcc2d2c35"))
                {
                    If (Arg2 == Zero)
                    {
                        If (Arg1 == One)
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                             /* . */
                            })
                        }
                    }

                    If (Arg2 == One)
                    {
                        Return ((PMBS + 0x20))
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             /* . */
                    })
                }
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000009,
                    }
                })
                Return (RBUF) /* \_SB_.GPED._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (OSYS >= 0x07DD)
                {
                    If (PB1E & One)
                    {
                        Return (Zero)
                    }
                }

                Return (Zero)
            }

            Method (_AEI, 0, Serialized)  // _AEI: ACPI Event Interrupts
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullDown, 0x0000,
                        "\\_SB.GPED", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0002
                        }
                })
                Return (RBUF) /* \_SB_.GPED._AEI.RBUF */
            }

            Method (_E02, 0, NotSerialized)  // _Exx: Edge-Triggered GPE
            {
                If (PWBS == One)
                {
                    PWBS = One
                    Notify (PWRB, 0x80) // Status Change
                }

                If (PMEB == One)
                {
                    PMEB = One
                }

                If (^^PCI0.SATA.PMES == One)
                {
                    ^^PCI0.SATA.PMES = One
                    Notify (^^PCI0.SATA, 0x02) // Device Wake
                }

                If (^^PCI0.HDEF.PMES == One)
                {
                    ^^PCI0.HDEF.PMES = One
                    Notify (^^PCI0.HDEF, 0x02) // Device Wake
                }

                If (^^PCI0.XHC1.PMES == One)
                {
                    ^^PCI0.XHC1.PMES = One
                    Notify (^^PCI0.XHC1, 0x02) // Device Wake
                }
            }
        }

        Device (GPO0)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT33FF")  // _HID: Hardware ID
            Name (_CID, "INT33FF")  // _CID: Compatible ID
            Name (_DDN, "General Purpose Input/Output (GPIO) controller - SOUTHWEST")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFED80000,         // Address Base
                        0x00008000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
                    {
                        0x00000031,
                    }
                })
                Return (RBUF) /* \_SB_.GPO0._CRS.RBUF */
            }

            OperationRegion (GPM0, SystemMemory, (GBA0 | 0x5800), 0x30)
            Field (GPM0, DWordAcc, Lock, Preserve)
            {
                    ,   1, 
                TSRR,   1, 
                Offset (0x18), 
                    ,   1, 
                TSR2,   1, 
                Offset (0x28), 
                    ,   1, 
                TSRS,   1
            }

            Name (AVBL, One)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If (Arg0 == Zero)
                {
                    AVBL = Arg1
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (OSYS <= 0x07D9)
                {
                    Return (Zero)
                }

                If (_OSI ("Android"))
                {
                    AVBL = Zero
                }

                If (GOAE == One)
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }

        Device (GPO1)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT33FF")  // _HID: Hardware ID
            Name (_CID, "INT33FF")  // _CID: Compatible ID
            Name (_DDN, "General Purpose Input/Output (GPIO) controller - NORTH")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFED88000,         // Address Base
                        0x00008000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
                    {
                        0x00000030,
                    }
                })
                Return (RBUF) /* \_SB_.GPO1._CRS.RBUF */
            }

            OperationRegion (GPM1, SystemMemory, (GBA1 | 0x4428), 0x04)
            Field (GPM1, DWordAcc, Lock, Preserve)
            {
                    ,   1, 
                CWLE,   1
            }

            Name (AVBL, One)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If (Arg0 == Zero)
                {
                    AVBL = Arg1
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (OSYS <= 0x07D9)
                {
                    Return (Zero)
                }

                If (_OSI ("Android"))
                {
                    AVBL = Zero
                }

                If (GOAE == One)
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }

        Device (GPO2)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT33FF")  // _HID: Hardware ID
            Name (_CID, "INT33FF")  // _CID: Compatible ID
            Name (_DDN, "General Purpose Input/Output (GPIO) controller - EAST")  // _DDN: DOS Device Name
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFED90000,         // Address Base
                        0x00008000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
                    {
                        0x00000032,
                    }
                })
                Return (RBUF) /* \_SB_.GPO2._CRS.RBUF */
            }

            OperationRegion (GPM2, SystemMemory, (GBA2 | 0x4820), 0x04)
            Field (GPM2, DWordAcc, Lock, Preserve)
            {
                    ,   1, 
                SHD3,   1
            }

            Name (AVBL, One)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If (Arg0 == Zero)
                {
                    AVBL = Arg1
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (OSYS <= 0x07D9)
                {
                    Return (Zero)
                }

                Return (0x0F)
            }
        }

        Device (GPO3)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT33FF")  // _HID: Hardware ID
            Name (_CID, "INT33FF")  // _CID: Compatible ID
            Name (_DDN, "General Purpose Input/Output (GPIO) controller - SOUTHEAST")  // _DDN: DOS Device Name
            Name (_UID, 0x04)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFED98000,         // Address Base
                        0x00008000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
                    {
                        0x0000005B,
                    }
                })
                Return (RBUF) /* \_SB_.GPO3._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (OSYS <= 0x07D9)
                {
                    Return (Zero)
                }

                If (GOAE == One)
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }

        Device (TBAD)
        {
            Name (_HID, "INTCFD9" /* Intel Baytrail SOC GPIO Controller */)  // _HID: Hardware ID
            Name (_CID, "PNP0C40" /* Standard Button Controller */)  // _CID: Compatible ID
            Name (_DDN, "Keyboard less system - 5 Button Array Device")  // _DDN: DOS Device Name
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveBoth, Exclusive, PullDefault, 0x1770,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0006
                        }
                    GpioInt (Edge, ActiveBoth, Exclusive, PullDefault, 0x1770,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0005
                        }
                    GpioInt (Edge, ActiveBoth, Exclusive, PullDefault, 0x1770,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0004
                        }
                    GpioInt (Edge, ActiveBoth, Exclusive, PullDefault, 0x1770,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0002
                        }
                })
                Return (RBUF) /* \_SB_.TBAD._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (Zero)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                Debug = "Method _DSM for Button Device"
                If (Arg0 == ToUUID ("dfbcf3c5-e7a5-44e6-9c1f-29c76f6e059c") /* Power Button Device */)
                {
                    While (One)
                    {
                        _T_0 = Arg2
                        If (_T_0 == Zero)
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                             /* . */
                            })
                        }
                        ElseIf (_T_0 == One)
                        {
                            Return (0x03)
                        }

                        Break
                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             /* . */
                    })
                }
            }
        }

        Device (MBID)
        {
            Name (_HID, "INT33BD" /* Intel Baytrail Mailbox Device */)  // _HID: Hardware ID
            Name (_CID, "INT33BD" /* Intel Baytrail Mailbox Device */)  // _CID: Compatible ID
            Name (_HRV, 0x02)  // _HRV: Hardware Revision
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xE00000D0,         // Address Base
                        0x0000000C,         // Address Length
                        )
                })
                Return (RBUF) /* \_SB_.MBID._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (Zero)
            }

            OperationRegion (REGS, 0x87, Zero, 0x30)
            Field (REGS, DWordAcc, NoLock, Preserve)
            {
                PORT,   32, 
                REG,    32, 
                DATA,   32, 
                MASK,   32, 
                BE,     32, 
                OP,     32
            }

            Name (AVBL, Zero)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If (Arg0 == 0x87)
                {
                    AVBL = Arg1
                }
            }

            Method (READ, 3, Serialized)
            {
                Local0 = 0xFFFFFFFF
                If (AVBL == One)
                {
                    OP = Zero
                    PORT = Arg0
                    REG = Arg1
                    BE = Arg2
                    Local0 = DATA /* \_SB_.MBID.DATA */
                }

                Return (Local0)
            }

            Method (WRIT, 4, Serialized)
            {
                If (AVBL == One)
                {
                    OP = One
                    PORT = Arg0
                    REG = Arg1
                    BE = Arg2
                    DATA = Arg3
                }
            }

            Method (MODI, 5, Serialized)
            {
                If (AVBL == One)
                {
                    OP = 0x02
                    PORT = Arg0
                    REG = Arg1
                    BE = Arg2
                    DATA = Arg3
                    MASK = Arg4
                }
            }
        }

        Device (PIND)
        {
            Name (_HID, "INT3497")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Android"))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Name (PDAT, Package (0x03)
            {
                Package (0x02)
                {
                    "VOLUME_UP", 
                    Package (0x01)
                    {
                        0x02
                    }
                }, 

                Package (0x02)
                {
                    "VOLUME_DOWN", 
                    Package (0x01)
                    {
                        0x02
                    }
                }, 

                Package (0x02)
                {
                    "HOME_BUTTON", 
                    Package (0x01)
                    {
                        0x02
                    }
                }
            })
            Method (_IND, 0, Serialized)
            {
                Return (PDAT) /* \_SB_.PIND.PDAT */
            }
        }
    }

    Scope (_SB)
    {
        Device (PTID)
        {
            Name (_HID, EisaId ("INT340E") /* Motherboard Resources */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _CID: Compatible ID
            Name (IVER, 0x00030000)
            Name (_STA, Zero)  // _STA: Status
            Name (TSDL, Package (0x1E)
            {
                Zero, 
                "CPU Core 0 DTS", 
                Zero, 
                "CPU Core 1 DTS", 
                0x03, 
                "AmbientTempLocal", 
                0x03, 
                "AmbientTempRemote1", 
                0x03, 
                "AmbientTempRemote2", 
                0x03, 
                "CpuTempLocal", 
                0x03, 
                "CpuTempRemote", 
                0x03, 
                "DDRTempLocal", 
                0x03, 
                "DDRTempRemote", 
                0x03, 
                "EC Critical temp", 
                0x03, 
                "OS Critical trip point", 
                0x03, 
                "OS Hot trip point", 
                0x03, 
                "OS Passive trip point", 
                0x03, 
                "OS Active 0 trip point", 
                0x0E, 
                "TZ01 _TMP"
            })
            Method (TSDD, 0, Serialized)
            {
                Name (TSDX, Package (0x0F)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                })
                TSDX [Zero] = ((DTS1 * 0x0A) + 0x0AAC)
                TSDX [One] = ((DTS2 * 0x0A) + 0x0AAC)
                TSDX [0x0A] = \_TZ.TZ01._CRT ()
                TSDX [0x0C] = \_TZ.TZ01._PSV ()
                TSDX [0x0D] = \_TZ.TZ01._AC0 ()
                TSDX [0x0E] = \_TZ.TZ01._TMP ()
                Return (TSDX) /* \_SB_.PTID.TSDD.TSDX */
            }

            Name (PSDL, Package (0x02)
            {
                Zero, 
                "CPU Power"
            })
            Method (PSDD, 0, Serialized)
            {
                Name (PSDX, Package (0x01)
                {
                    0x80000000
                })
                PSDX [Zero] = 0x64
                Return (PSDX) /* \_SB_.PTID.PSDD.PSDX */
            }

            Name (OSDL, Package (0x06)
            {
                0x04, 
                "CPU Fan Duty Cycle", 
                "RAW", 
                0x04, 
                "CPU Fan #1 Speed", 
                "RPM"
            })
            Method (OSDD, 0, Serialized)
            {
                Name (OSDX, Package (0x02)
                {
                    0x80000000, 
                    0x80000000
                })
                Return (OSDX) /* \_SB_.PTID.OSDD.OSDX */
            }

            Method (SDSP, 0, NotSerialized)
            {
                Return (0x0A)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (PDRC)
        {
            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (BUF0, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0xE0000000,         // Address Base
                    0x10000000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFEA00000,         // Address Base
                    0x00100000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED01000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED03000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED06000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED08000,         // Address Base
                    0x00002000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED80000,         // Address Base
                    0x00040000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED1C000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFEE00000,         // Address Base
                    0x00100000,         // Address Length
                    )
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Return (BUF0) /* \_SB_.PCI0.PDRC.BUF0 */
            }
        }
    }

    Method (BRTN, 1, Serialized)
    {
        If ((DIDX & 0x0F00) == 0x0400)
        {
            Notify (\_SB.PCI0.GFX0.DD1F, Arg0)
        }
    }

    Scope (_GPE)
    {
        Method (_L01, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            L01C += One
            If ((RP1D == Zero) && \_SB.PCI0.RP01.HPSX)
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP01.PDCX)
                {
                    \_SB.PCI0.RP01.PDCX = One
                    \_SB.PCI0.RP01.HPSX = One
                    If (!\_SB.PCI0.RP01.PDSX)
                    {
                        \_SB.PCI0.RP01.L0SE = Zero
                    }

                    Notify (\_SB.PCI0.RP01, Zero) // Bus Check
                }
                Else
                {
                    \_SB.PCI0.RP01.HPSX = One
                }
            }

            If ((RP2D == Zero) && \_SB.PCI0.RP02.HPSX)
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP02.PDCX)
                {
                    \_SB.PCI0.RP02.PDCX = One
                    \_SB.PCI0.RP02.HPSX = One
                    If (!\_SB.PCI0.RP02.PDSX)
                    {
                        \_SB.PCI0.RP02.L0SE = Zero
                    }

                    Notify (\_SB.PCI0.RP02, Zero) // Bus Check
                }
                Else
                {
                    \_SB.PCI0.RP02.HPSX = One
                }
            }

            If ((RP3D == Zero) && \_SB.PCI0.RP03.HPSX)
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP03.PDCX)
                {
                    \_SB.PCI0.RP03.PDCX = One
                    \_SB.PCI0.RP03.HPSX = One
                    If (!\_SB.PCI0.RP03.PDSX)
                    {
                        \_SB.PCI0.RP03.L0SE = Zero
                    }

                    Notify (\_SB.PCI0.RP03, Zero) // Bus Check
                }
                Else
                {
                    \_SB.PCI0.RP03.HPSX = One
                }
            }

            If ((RP4D == Zero) && \_SB.PCI0.RP04.HPSX)
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP04.PDCX)
                {
                    \_SB.PCI0.RP04.PDCX = One
                    \_SB.PCI0.RP04.HPSX = One
                    If (!\_SB.PCI0.RP04.PDSX)
                    {
                        \_SB.PCI0.RP04.L0SE = Zero
                    }

                    Notify (\_SB.PCI0.RP04, Zero) // Bus Check
                }
                Else
                {
                    \_SB.PCI0.RP04.HPSX = One
                }
            }
        }

        Method (_L02, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            GPEC = Zero
            Notify (\_TZ.TZ01, 0x80) // Thermal Status Change
        }

        Method (_L17, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If ((BDID == CHRB) | (BDID == CIRB))
            {
                GP23 = One
                Notify (\_TZ.TZ01, 0x80) // Thermal Status Change
            }
        }

        Method (_L04, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            PSCI = One
        }

        Method (_L05, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (\_SB.PCI0.GFX0.GSSE && !GSMI)
            {
                \_SB.PCI0.GFX0.GSCI ()
            }
        }

        Method (_L09, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (RP1D == Zero)
            {
                \_SB.PCI0.RP01.HPME ()
                Notify (\_SB.PCI0.RP01, 0x02) // Device Wake
            }

            If (RP2D == Zero)
            {
                \_SB.PCI0.RP02.HPME ()
                Notify (\_SB.PCI0.RP02, 0x02) // Device Wake
            }

            If (RP3D == Zero)
            {
                \_SB.PCI0.RP03.HPME ()
                Notify (\_SB.PCI0.RP03, 0x02) // Device Wake
            }

            If (RP4D == Zero)
            {
                \_SB.PCI0.RP04.HPME ()
                Notify (\_SB.PCI0.RP04, 0x02) // Device Wake
            }
        }

        Method (_L0D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.HDEF, 0x02) // Device Wake
            Notify (\_SB.PCI0.XHC1, 0x02) // Device Wake
        }
    }

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    Name (_S3, Package (0x04)  // _S3_: S3 System State
    {
        0x05, 
        Zero, 
        Zero, 
        Zero
    })
    Name (_S4, Package (0x04)  // _S4_: S4 System State
    {
        0x06, 
        Zero, 
        Zero, 
        Zero
    })
    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x07, 
        Zero, 
        Zero, 
        Zero
    })
    Method (PTS, 1, NotSerialized)
    {
        If (Arg0) {}
    }

    Method (WAK, 1, NotSerialized)
    {
    }
}

