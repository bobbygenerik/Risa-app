.class public abstract Lʿⁱ/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:I

.field public static final ˈ:I

.field public static final ˑﹳ:J

.field public static final ⁱˊ:J

.field public static final ﹳٴ:Ljava/lang/String;

.field public static final ﾞᴵ:Lʿⁱ/ﾞᴵ;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-string v0, "kotlinx.coroutines.scheduler.default.name"

    sget v1, Lˊʽ/ˏי;->ﹳٴ:I

    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    const-string v0, "DefaultDispatcher"

    :cond_0
    sput-object v0, Lʿⁱ/ˆʾ;->ﹳٴ:Ljava/lang/String;

    const-wide/16 v4, 0x1

    const-wide v6, 0x7fffffffffffffffL

    const-string v1, "kotlinx.coroutines.scheduler.resolution.ns"

    const-wide/32 v2, 0x186a0

    invoke-static/range {v1 .. v7}, Lˊʽ/ⁱˊ;->ٴﹶ(Ljava/lang/String;JJJ)J

    move-result-wide v0

    sput-wide v0, Lʿⁱ/ˆʾ;->ⁱˊ:J

    sget v0, Lˊʽ/ˏי;->ﹳٴ:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    move v0, v1

    :cond_1
    const/16 v1, 0x8

    const-string v2, "kotlinx.coroutines.scheduler.core.pool.size"

    invoke-static {v0, v1, v2}, Lˊʽ/ⁱˊ;->ﾞʻ(IILjava/lang/String;)I

    move-result v0

    sput v0, Lʿⁱ/ˆʾ;->ʽ:I

    const v0, 0x1ffffe

    const/4 v1, 0x4

    const-string v2, "kotlinx.coroutines.scheduler.max.pool.size"

    invoke-static {v0, v1, v2}, Lˊʽ/ⁱˊ;->ﾞʻ(IILjava/lang/String;)I

    move-result v0

    sput v0, Lʿⁱ/ˆʾ;->ˈ:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    const-wide v6, 0x7fffffffffffffffL

    const-string v1, "kotlinx.coroutines.scheduler.keep.alive.sec"

    const-wide/16 v2, 0x3c

    invoke-static/range {v1 .. v7}, Lˊʽ/ⁱˊ;->ٴﹶ(Ljava/lang/String;JJJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lʿⁱ/ˆʾ;->ˑﹳ:J

    sget-object v0, Lʿⁱ/ﾞᴵ;->ﹳٴ:Lʿⁱ/ﾞᴵ;

    sput-object v0, Lʿⁱ/ˆʾ;->ﾞᴵ:Lʿⁱ/ﾞᴵ;

    return-void
.end method
