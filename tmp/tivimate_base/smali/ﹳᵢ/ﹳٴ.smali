.class public abstract Lﹳᵢ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹳᵢ/ᴵˊ;


# instance fields
.field public final ʽʽ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

.field public final ʾˋ:Ljava/util/ArrayList;

.field public final ˈٴ:Lⁱᴵ/ʼˎ;

.field public ˊʻ:Lʽⁱ/ʼˈ;

.field public ٴᵢ:Lʻʿ/יـ;

.field public final ᴵˊ:Ljava/util/HashSet;

.field public ᴵᵔ:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lﹳᵢ/ﹳٴ;->ʾˋ:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lﹳᵢ/ﹳٴ;->ᴵˊ:Ljava/util/HashSet;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILﹳᵢ/ᵢˏ;)V

    iput-object v0, p0, Lﹳᵢ/ﹳٴ;->ʽʽ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    new-instance v0, Lⁱᴵ/ʼˎ;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lⁱᴵ/ʼˎ;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILﹳᵢ/ᵢˏ;)V

    iput-object v0, p0, Lﹳᵢ/ﹳٴ;->ˈٴ:Lⁱᴵ/ʼˎ;

    return-void
.end method


# virtual methods
.method public final ʻٴ(Lʽⁱ/ʼˈ;)V
    .locals 4

    .prologue
    iput-object p1, p0, Lﹳᵢ/ﹳٴ;->ˊʻ:Lʽⁱ/ʼˈ;

    iget-object v0, p0, Lﹳᵢ/ﹳٴ;->ʾˋ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lﹳᵢ/ʾˋ;

    invoke-interface {v3, p0, p1}, Lﹳᵢ/ʾˋ;->ﹳٴ(Lﹳᵢ/ﹳٴ;Lʽⁱ/ʼˈ;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic ʼˎ()Lʽⁱ/ʼˈ;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final ʼᐧ(Lﹳᵢ/ٴᵢ;)V
    .locals 4

    .prologue
    iget-object v0, p0, Lﹳᵢ/ﹳٴ;->ʽʽ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lﹳᵢ/ˊʻ;

    iget-object v3, v2, Lﹳᵢ/ˊʻ;->ⁱˊ:Ljava/lang/Object;

    if-ne v3, p1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final ʽ(Lﹳᵢ/ʾˋ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lﹳᵢ/ﹳٴ;->ᴵᵔ:Landroid/os/Looper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lﹳᵢ/ﹳٴ;->ᴵˊ:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lﹳᵢ/ﹳٴ;->יـ()V

    :cond_0
    return-void
.end method

.method public abstract ʾᵎ()V
.end method

.method public final ˆʾ(Lⁱᴵ/ˆʾ;)V
    .locals 4

    .prologue
    iget-object v0, p0, Lﹳᵢ/ﹳٴ;->ˈٴ:Lⁱᴵ/ʼˎ;

    iget-object v0, v0, Lⁱᴵ/ʼˎ;->ʽ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lⁱᴵ/ᵔᵢ;

    iget-object v3, v2, Lⁱᴵ/ᵔᵢ;->ⁱˊ:Ljava/lang/Object;

    if-ne v3, p1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final ˉʿ(Lﹳᵢ/ʾˋ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lﹳᵢ/ﹳٴ;->ᴵˊ:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lﹳᵢ/ﹳٴ;->ﹳᐧ()V

    :cond_0
    return-void
.end method

.method public final ˉˆ(Landroid/os/Handler;Lﹳᵢ/ٴᵢ;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lﹳᵢ/ﹳٴ;->ʽʽ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lﹳᵢ/ˊʻ;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p1, v1, Lﹳᵢ/ˊʻ;->ﹳٴ:Landroid/os/Handler;

    iput-object p2, v1, Lﹳᵢ/ˊʻ;->ⁱˊ:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract ˏי(Lـˊ/ᵔﹳ;)V
.end method

.method public יـ()V
    .locals 0

    return-void
.end method

.method public final ٴﹶ(Lﹳᵢ/ʾˋ;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lﹳᵢ/ﹳٴ;->ʾˋ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lﹳᵢ/ﹳٴ;->ᴵᵔ:Landroid/os/Looper;

    iput-object p1, p0, Lﹳᵢ/ﹳٴ;->ˊʻ:Lʽⁱ/ʼˈ;

    iput-object p1, p0, Lﹳᵢ/ﹳٴ;->ٴᵢ:Lʻʿ/יـ;

    iget-object p1, p0, Lﹳᵢ/ﹳٴ;->ᴵˊ:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    invoke-virtual {p0}, Lﹳᵢ/ﹳٴ;->ʾᵎ()V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lﹳᵢ/ﹳٴ;->ˉʿ(Lﹳᵢ/ʾˋ;)V

    return-void
.end method

.method public final ᵔᵢ(Lﹳᵢ/ʾˋ;Lـˊ/ᵔﹳ;Lʻʿ/יـ;)V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lﹳᵢ/ﹳٴ;->ᴵᵔ:Landroid/os/Looper;

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    iput-object p3, p0, Lﹳᵢ/ﹳٴ;->ٴᵢ:Lʻʿ/יـ;

    iget-object p3, p0, Lﹳᵢ/ﹳٴ;->ˊʻ:Lʽⁱ/ʼˈ;

    iget-object v1, p0, Lﹳᵢ/ﹳٴ;->ʾˋ:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lﹳᵢ/ﹳٴ;->ᴵᵔ:Landroid/os/Looper;

    if-nez v1, :cond_2

    iput-object v0, p0, Lﹳᵢ/ﹳٴ;->ᴵᵔ:Landroid/os/Looper;

    iget-object p3, p0, Lﹳᵢ/ﹳٴ;->ᴵˊ:Ljava/util/HashSet;

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2}, Lﹳᵢ/ﹳٴ;->ˏי(Lـˊ/ᵔﹳ;)V

    return-void

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p0, p1}, Lﹳᵢ/ﹳٴ;->ʽ(Lﹳᵢ/ʾˋ;)V

    invoke-interface {p1, p0, p3}, Lﹳᵢ/ʾˋ;->ﹳٴ(Lﹳᵢ/ﹳٴ;Lʽⁱ/ʼˈ;)V

    :cond_3
    return-void
.end method

.method public final ᵔﹳ(Lﹳᵢ/ᵢˏ;)Lcom/google/android/gms/internal/play_billing/ʽﹳ;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget-object v1, p0, Lﹳᵢ/ﹳٴ;->ʽʽ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget-object v1, v1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILﹳᵢ/ᵢˏ;)V

    return-object v0
.end method

.method public ﹳᐧ()V
    .locals 0

    return-void
.end method

.method public final ﾞʻ(Landroid/os/Handler;Lⁱᴵ/ˆʾ;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lﹳᵢ/ﹳٴ;->ˈٴ:Lⁱᴵ/ʼˎ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lⁱᴵ/ʼˎ;->ʽ:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lⁱᴵ/ᵔᵢ;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p1, v1, Lⁱᴵ/ᵔᵢ;->ﹳٴ:Landroid/os/Handler;

    iput-object p2, v1, Lⁱᴵ/ᵔᵢ;->ⁱˊ:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic ﾞᴵ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
