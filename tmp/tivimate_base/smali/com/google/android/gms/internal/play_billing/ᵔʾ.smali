.class public final Lcom/google/android/gms/internal/play_billing/ᵔʾ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:J

.field public ˈ:J

.field public ⁱˊ:Z

.field public final ﹳٴ:Lcom/google/android/gms/internal/measurement/ᵎ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/ᵎ;)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/ᵔʾ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ᵎ;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "ticker"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 8

    .prologue
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/ᵔʾ;->ⁱˊ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ᵔʾ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ᵎ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ᵎ;->ـˆ()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/play_billing/ᵔʾ;->ˈ:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/play_billing/ᵔʾ;->ʽ:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/play_billing/ᵔʾ;->ʽ:J

    :goto_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    goto :goto_1

    :cond_2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    goto :goto_1

    :cond_3
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    goto :goto_1

    :cond_4
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-lez v4, :cond_5

    goto :goto_1

    :cond_5
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    goto :goto_1

    :cond_6
    move-object v2, v3

    :goto_1
    long-to-double v0, v0

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    long-to-double v3, v3

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    div-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    const-string v0, "%.4g"

    invoke-static {v5, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/play_billing/ˉʿ;->ﹳٴ:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    const-string v1, "d"

    goto :goto_2

    :pswitch_1
    const-string v1, "h"

    goto :goto_2

    :pswitch_2
    const-string v1, "min"

    goto :goto_2

    :pswitch_3
    const-string v1, "s"

    goto :goto_2

    :pswitch_4
    const-string v1, "ms"

    goto :goto_2

    :pswitch_5
    const-string v1, "\u03bcs"

    goto :goto_2

    :pswitch_6
    const-string v1, "ns"

    :goto_2
    const-string v2, " "

    invoke-static {v0, v2, v1}, Lʼﾞ/ˊˋ;->ﹳᐧ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ﹳٴ()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/ᵔʾ;->ⁱˊ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/ᵔʾ;->ⁱˊ:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ᵔʾ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ᵎ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ᵎ;->ـˆ()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/play_billing/ᵔʾ;->ˈ:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This stopwatch is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
