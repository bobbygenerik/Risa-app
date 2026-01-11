.class public final Lﹶﾞ/ˉʽ;
.super Lﹶﾞ/ٴᵢ;
.source "SourceFile"


# instance fields
.field public ʽʽ:Lcom/google/android/gms/internal/measurement/ˉٴ;

.field public ˈٴ:Z

.field public final ˊʻ:Lʻˆ/ʽ;

.field public final ٴᵢ:Lـʾ/ᵔﹳ;

.field public final ᴵᵔ:Lⁱʽ/ﹳٴ;


# direct methods
.method public constructor <init>(Lﹶﾞ/ᵎʻ;)V
    .locals 3

    invoke-direct {p0, p1}, Lﹶﾞ/ٴᵢ;-><init>(Lﹶﾞ/ᵎʻ;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lﹶﾞ/ˉʽ;->ˈٴ:Z

    new-instance p1, Lⁱʽ/ﹳٴ;

    invoke-direct {p1, p0}, Lⁱʽ/ﹳٴ;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lﹶﾞ/ˉʽ;->ᴵᵔ:Lⁱʽ/ﹳٴ;

    new-instance p1, Lʻˆ/ʽ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p0, p1, Lʻˆ/ʽ;->ˈٴ:Ljava/lang/Object;

    new-instance v0, Lﹶﾞ/ˆʻ;

    iget-object v1, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ᵎʻ;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lﹶﾞ/ˆʻ;-><init>(Ljava/lang/Object;Lﹶﾞ/יﹳ;I)V

    iput-object v0, p1, Lʻˆ/ʽ;->ʽʽ:Ljava/lang/Object;

    iget-object v0, v1, Lﹶﾞ/ᵎʻ;->ᵎˊ:Lᵎᴵ/ﹳٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lʻˆ/ʽ;->ʾˋ:J

    iput-wide v0, p1, Lʻˆ/ʽ;->ᴵˊ:J

    iput-object p1, p0, Lﹶﾞ/ˉʽ;->ˊʻ:Lʻˆ/ʽ;

    new-instance p1, Lـʾ/ᵔﹳ;

    invoke-direct {p1, p0}, Lـʾ/ᵔﹳ;-><init>(Lﹶﾞ/ˉʽ;)V

    iput-object p1, p0, Lﹶﾞ/ˉʽ;->ٴᵢ:Lـʾ/ᵔﹳ;

    return-void
.end method


# virtual methods
.method public final ʼᵢ()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    iget-object v0, p0, Lﹶﾞ/ˉʽ;->ʽʽ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/measurement/ˉٴ;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/ˉٴ;-><init>(Landroid/os/Looper;I)V

    iput-object v0, p0, Lﹶﾞ/ˉʽ;->ʽʽ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    :cond_0
    return-void
.end method

.method public final ˋˊ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
