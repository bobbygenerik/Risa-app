.class public Lar/tvplayer/tv/ProtectedTvPlayerApplication$TvPlayerApplication;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final H:Ljava/lang/Throwable;

.field private final gEweH:Ljava/lang/String;

.field private final t:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lar/tvplayer/tv/ProtectedTvPlayerApplication$TvPlayerApplication;->t:Landroid/content/Context;

    iput-object p2, p0, Lar/tvplayer/tv/ProtectedTvPlayerApplication$TvPlayerApplication;->H:Ljava/lang/Throwable;

    iput-object p3, p0, Lar/tvplayer/tv/ProtectedTvPlayerApplication$TvPlayerApplication;->gEweH:Ljava/lang/String;

    return-void
.end method

.method static Cm(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lar/tvplayer/tv/ProtectedTvPlayerApplication$TvPlayerApplication;->j(Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private static FnhHwHdmB()Ljava/lang/String;
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

    and-long v0, v1, v7

    or-long/2addr v0, v5

    new-instance v2, Ljava/util/UUID;

    invoke-direct {v2, v0, v1, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static InCiA(Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-ge v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Lar/tvplayer/tv/ProtectedTvPlayerApplication$TvPlayerApplication;->iDhtvgHc(Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2}, Lar/tvplayer/tv/ProtectedTvPlayerApplication$TvPlayerApplication;->j(Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static cemBBhozBt(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lar/tvplayer/tv/ProtectedTvPlayerApplication$TvPlayerApplication;->InCiA(Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private static clyGbdha(Ljava/lang/Throwable;Ljava/lang/String;)Lar/tvplayer/tv/MessageGuardException;
    .locals 2

    const/4 v0, 0x0

    new-instance v1, Lar/tvplayer/tv/MessageGuardException;

    invoke-direct {v1, p0, v0}, Lar/tvplayer/tv/MessageGuardException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v1
.end method

.method private static iDhtvgHc(Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1, p2}, Lar/tvplayer/tv/ProtectedTvPlayerApplication$TvPlayerApplication;->clyGbdha(Ljava/lang/Throwable;Ljava/lang/String;)Lar/tvplayer/tv/MessageGuardException;

    move-result-object v0

    throw v0
.end method

.method static j(Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lar/tvplayer/tv/ProtectedTvPlayerApplication$TvPlayerApplication;

    invoke-direct {v0, p0, p1, p2}, Lar/tvplayer/tv/ProtectedTvPlayerApplication$TvPlayerApplication;-><init>(Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lar/tvplayer/tv/ProtectedTvPlayerApplication$TvPlayerApplication;->t:Landroid/content/Context;

    iget-object v1, p0, Lar/tvplayer/tv/ProtectedTvPlayerApplication$TvPlayerApplication;->H:Ljava/lang/Throwable;

    iget-object v2, p0, Lar/tvplayer/tv/ProtectedTvPlayerApplication$TvPlayerApplication;->gEweH:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lar/tvplayer/tv/ProtectedTvPlayerApplication$TvPlayerApplication;->iDhtvgHc(Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
