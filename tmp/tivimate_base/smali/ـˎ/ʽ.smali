.class public final Lـˎ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lـˎ/ˑﹳ;
.implements Lـˎ/ﾞᴵ;


# instance fields
.field public final ʽ:Lʾﹳ/ⁱˊ;

.field public final ˈ:Ljava/util/Set;

.field public final ˑﹳ:Ljava/util/concurrent/Executor;

.field public final ⁱˊ:Landroid/content/Context;

.field public final ﹳٴ:Lˏ/ٴﹶ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lʾﹳ/ⁱˊ;Ljava/util/concurrent/Executor;)V
    .locals 2

    new-instance v0, Lˏ/ٴﹶ;

    new-instance v1, Lˉᵎ/ʽ;

    invoke-direct {v1, p1, p2}, Lˉᵎ/ʽ;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lˏ/ٴﹶ;-><init>(Lʾﹳ/ⁱˊ;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lـˎ/ʽ;->ﹳٴ:Lˏ/ٴﹶ;

    iput-object p3, p0, Lـˎ/ʽ;->ˈ:Ljava/util/Set;

    iput-object p5, p0, Lـˎ/ʽ;->ˑﹳ:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lـˎ/ʽ;->ʽ:Lʾﹳ/ⁱˊ;

    iput-object p1, p0, Lـˎ/ʽ;->ⁱˊ:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final ⁱˊ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lـˎ/ʽ;->ˈ:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/ᵎ;->ᵔᵢ(Ljava/lang/Object;)Lˏـ/ˉʿ;

    return-void

    :cond_0
    iget-object v0, p0, Lـˎ/ʽ;->ⁱˊ:Landroid/content/Context;

    invoke-static {v0}, Lᴵˋ/ˊʻ;->ᴵˊ(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/ᵎ;->ᵔᵢ(Ljava/lang/Object;)Lˏـ/ˉʿ;

    return-void

    :cond_1
    new-instance v0, Lـˎ/ⁱˊ;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lـˎ/ⁱˊ;-><init>(Lـˎ/ʽ;I)V

    iget-object v1, p0, Lـˎ/ʽ;->ˑﹳ:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/ᵎ;->ˑﹳ(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lˏـ/ˉʿ;

    return-void
.end method

.method public final ﹳٴ()Lˏـ/ˉʿ;
    .locals 2

    .prologue
    iget-object v0, p0, Lـˎ/ʽ;->ⁱˊ:Landroid/content/Context;

    invoke-static {v0}, Lᴵˋ/ˊʻ;->ᴵˊ(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ᵎ;->ᵔᵢ(Ljava/lang/Object;)Lˏـ/ˉʿ;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lـˎ/ⁱˊ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lـˎ/ⁱˊ;-><init>(Lـˎ/ʽ;I)V

    iget-object v1, p0, Lـˎ/ʽ;->ˑﹳ:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/ᵎ;->ˑﹳ(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lˏـ/ˉʿ;

    move-result-object v0

    return-object v0
.end method
