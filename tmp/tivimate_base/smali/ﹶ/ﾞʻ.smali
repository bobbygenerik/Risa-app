.class public final Lﹶ/ﾞʻ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:J

.field public final ʽ:Lⁱʽ/ﹳٴ;

.field public ˈ:I

.field public ˑﹳ:J

.field public ᵎﹶ:J

.field public ᵔᵢ:J

.field public final ⁱˊ:I

.field public final ﹳٴ:Lﹶ/ٴﹶ;

.field public ﾞᴵ:J


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;Lⁱʽ/ﹳٴ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lﹶ/ٴﹶ;

    invoke-direct {v0, p1}, Lﹶ/ٴﹶ;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lﹶ/ﾞʻ;->ﹳٴ:Lﹶ/ٴﹶ;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p1

    iput p1, p0, Lﹶ/ﾞʻ;->ⁱˊ:I

    iput-object p2, p0, Lﹶ/ﾞʻ;->ʽ:Lⁱʽ/ﹳٴ;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lﹶ/ﾞʻ;->ﹳٴ(I)V

    return-void
.end method


# virtual methods
.method public final ﹳٴ(I)V
    .locals 6

    .prologue
    iput p1, p0, Lﹶ/ﾞʻ;->ˈ:I

    const-wide/16 v0, 0x2710

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-wide/32 v0, 0x7a120

    iput-wide v0, p0, Lﹶ/ﾞʻ;->ﾞᴵ:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    const-wide/32 v0, 0x989680

    iput-wide v0, p0, Lﹶ/ﾞʻ;->ﾞᴵ:J

    return-void

    :cond_2
    iput-wide v0, p0, Lﹶ/ﾞʻ;->ﾞᴵ:J

    return-void

    :cond_3
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lﹶ/ﾞʻ;->ᵎﹶ:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lﹶ/ﾞʻ;->ᵔᵢ:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lﹶ/ﾞʻ;->ʼˎ:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lﹶ/ﾞʻ;->ˑﹳ:J

    iput-wide v0, p0, Lﹶ/ﾞʻ;->ﾞᴵ:J

    return-void
.end method
