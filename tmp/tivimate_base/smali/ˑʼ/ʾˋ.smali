.class public final Lˑʼ/ʾˋ;
.super Lˑʼ/ʽʽ;
.source "SourceFile"


# instance fields
.field public final synthetic ʽ:Lcom/bumptech/glide/ˈ;

.field public final synthetic ˈ:Lˑﹳ/ⁱˊ;

.field public final synthetic ˑﹳ:Lˑʼ/ᴵᵔ;

.field public final synthetic ⁱˊ:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic ﹳٴ:Lˊⁱ/ˑﹳ;


# direct methods
.method public constructor <init>(Lˑʼ/ᴵᵔ;Lˊⁱ/ˑﹳ;Ljava/util/concurrent/atomic/AtomicReference;Lcom/bumptech/glide/ˈ;Lˑﹳ/ⁱˊ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˑʼ/ʾˋ;->ˑﹳ:Lˑʼ/ᴵᵔ;

    iput-object p2, p0, Lˑʼ/ʾˋ;->ﹳٴ:Lˊⁱ/ˑﹳ;

    iput-object p3, p0, Lˑʼ/ʾˋ;->ⁱˊ:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lˑʼ/ʾˋ;->ʽ:Lcom/bumptech/glide/ˈ;

    iput-object p5, p0, Lˑʼ/ʾˋ;->ˈ:Lˑﹳ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fragment_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lˑʼ/ʾˋ;->ˑﹳ:Lˑʼ/ᴵᵔ;

    iget-object v2, v1, Lˑʼ/ᴵᵔ;->ᴵᵔ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_rq#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lˑʼ/ᴵᵔ;->יﹳ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lˑʼ/ʾˋ;->ﹳٴ:Lˊⁱ/ˑﹳ;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lˊⁱ/ˑﹳ;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lʽ/ﾞᴵ;

    iget-object v3, p0, Lˑʼ/ʾˋ;->ʽ:Lcom/bumptech/glide/ˈ;

    iget-object v4, p0, Lˑʼ/ʾˋ;->ˈ:Lˑﹳ/ⁱˊ;

    invoke-virtual {v2, v0, v1, v3, v4}, Lʽ/ﾞᴵ;->ʽ(Ljava/lang/String;Landroidx/lifecycle/ʽﹳ;Lcom/bumptech/glide/ˈ;Lˑﹳ/ⁱˊ;)Lˑﹳ/ˈ;

    move-result-object v0

    iget-object v1, p0, Lˑʼ/ʾˋ;->ⁱˊ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
