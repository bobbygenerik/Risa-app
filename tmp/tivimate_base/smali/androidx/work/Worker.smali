.class public abstract Landroidx/work/Worker;
.super Lᴵˋ/יـ;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lᴵˋ/יـ;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method


# virtual methods
.method public final ˈ()Lʽﹳ/ٴﹶ;
    .locals 4

    iget-object v0, p0, Lᴵˋ/יـ;->ⁱˊ:Landroidx/work/WorkerParameters;

    iget-object v0, v0, Landroidx/work/WorkerParameters;->ˑﹳ:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lᴵˋ/ᵎⁱ;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lᴵˋ/ᵎⁱ;-><init>(Landroidx/work/Worker;I)V

    new-instance v2, Lʻʿ/ʽ;

    const/16 v3, 0xa

    invoke-direct {v2, v0, v3, v1}, Lʻʿ/ʽ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵔʾ(Lʽﹳ/ʼˎ;)Lʽﹳ/ٴﹶ;

    move-result-object v0

    return-object v0
.end method

.method public abstract ˑﹳ()Lᴵˋ/ᵔﹳ;
.end method

.method public final ﹳٴ()Lʽﹳ/ٴﹶ;
    .locals 4

    iget-object v0, p0, Lᴵˋ/יـ;->ⁱˊ:Landroidx/work/WorkerParameters;

    iget-object v0, v0, Landroidx/work/WorkerParameters;->ˑﹳ:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lᴵˋ/ᵎⁱ;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lᴵˋ/ᵎⁱ;-><init>(Landroidx/work/Worker;I)V

    new-instance v2, Lʻʿ/ʽ;

    const/16 v3, 0xa

    invoke-direct {v2, v0, v3, v1}, Lʻʿ/ʽ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵔʾ(Lʽﹳ/ʼˎ;)Lʽﹳ/ٴﹶ;

    move-result-object v0

    return-object v0
.end method
