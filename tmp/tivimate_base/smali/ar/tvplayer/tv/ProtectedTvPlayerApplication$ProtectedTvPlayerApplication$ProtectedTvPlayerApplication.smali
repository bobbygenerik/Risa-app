.class public final Lar/tvplayer/tv/ProtectedTvPlayerApplication$ProtectedTvPlayerApplication$ProtectedTvPlayerApplication;
.super Ljava/lang/Object;


# static fields
.field public static final bghxy:Ljava/lang/String;

.field public static el:Ljava/lang/String;


# instance fields
.field public final CwC:I

.field public final G:Ljava/lang/String;

.field public final IlbA:Z

.field public final dtwc:Z

.field public final ey:Z

.field public final fdDs:Ljava/lang/String;

.field public final fj:I

.field public final meqIF:Z

.field public final o:Z

.field public final oey:Z

.field public final qsyp:Z

.field public final wn:Z

.field public final xEkI:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/16 v0, 0x10

    shl-long/2addr v5, v0

    const-wide/32 v7, 0xffff

    and-long/2addr v1, v7

    or-long/2addr v1, v5

    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lar/tvplayer/tv/ProtectedTvPlayerApplication$ProtectedTvPlayerApplication$ProtectedTvPlayerApplication;->bghxy:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lar/tvplayer/tv/ProtectedTvPlayerApplication$ProtectedTvPlayerApplication$ProtectedTvPlayerApplication;->bghxy:Ljava/lang/String;

    iput-object p1, p0, Lar/tvplayer/tv/ProtectedTvPlayerApplication$ProtectedTvPlayerApplication$ProtectedTvPlayerApplication;->fdDs:Ljava/lang/String;

    iput-object p2, p0, Lar/tvplayer/tv/ProtectedTvPlayerApplication$ProtectedTvPlayerApplication$ProtectedTvPlayerApplication;->G:Ljava/lang/String;

    iput p3, p0, Lar/tvplayer/tv/ProtectedTvPlayerApplication$ProtectedTvPlayerApplication$ProtectedTvPlayerApplication;->CwC:I

    and-int/lit8 p1, p3, 0x1

    int-to-byte p1, p1

    iput-boolean p1, p0, Lar/tvplayer/tv/ProtectedTvPlayerApplication$ProtectedTvPlayerApplication$ProtectedTvPlayerApplication;->o:Z

    ushr-int/lit8 p1, p3, 0x1

    and-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-boolean p1, p0, Lar/tvplayer/tv/ProtectedTvPlayerApplication$ProtectedTvPlayerApplication$ProtectedTvPlayerApplication;->IlbA:Z

    ushr-int/lit8 p1, p3, 0x2

    and-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-boolean p1, p0, Lar/tvplayer/tv/ProtectedTvPlayerApplication$ProtectedTvPlayerApplication$ProtectedTvPlayerApplication;->xEkI:Z

    ushr-int/lit8 p1, p3, 0x3

    and-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-boolean p1, p0, Lar/tvplayer/tv/ProtectedTvPlayerApplication$ProtectedTvPlayerApplication$ProtectedTvPlayerApplication;->dtwc:Z

    ushr-int/lit8 p1, p3, 0x4

    and-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-boolean p1, p0, Lar/tvplayer/tv/ProtectedTvPlayerApplication$ProtectedTvPlayerApplication$ProtectedTvPlayerApplication;->oey:Z

    ushr-int/lit8 p1, p3, 0x5

    and-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-boolean p1, p0, Lar/tvplayer/tv/ProtectedTvPlayerApplication$ProtectedTvPlayerApplication$ProtectedTvPlayerApplication;->wn:Z

    ushr-int/lit8 p1, p3, 0x6

    and-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-boolean p1, p0, Lar/tvplayer/tv/ProtectedTvPlayerApplication$ProtectedTvPlayerApplication$ProtectedTvPlayerApplication;->ey:Z

    ushr-int/lit8 p1, p3, 0x7

    and-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-boolean p1, p0, Lar/tvplayer/tv/ProtectedTvPlayerApplication$ProtectedTvPlayerApplication$ProtectedTvPlayerApplication;->meqIF:Z

    ushr-int/lit8 p1, p3, 0x8

    and-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-boolean p1, p0, Lar/tvplayer/tv/ProtectedTvPlayerApplication$ProtectedTvPlayerApplication$ProtectedTvPlayerApplication;->qsyp:Z

    const/4 p1, 0x2

    iput p1, p0, Lar/tvplayer/tv/ProtectedTvPlayerApplication$ProtectedTvPlayerApplication$ProtectedTvPlayerApplication;->fj:I

    return-void
.end method

.method public static native wgHArt()Lar/tvplayer/tv/ProtectedTvPlayerApplication$ProtectedTvPlayerApplication$ProtectedTvPlayerApplication;
.end method

.method public static zHlu(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public native cxd(Ljava/lang/String;)Ljava/lang/String;
.end method
