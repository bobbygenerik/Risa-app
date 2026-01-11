.class public final Lˆˏ/ﹳٴ;
.super Lʽⁱ/ᵎﹶ;
.source "SourceFile"

# interfaces
.implements Lˆˏ/ˑﹳ;


# instance fields
.field public final ʽʽ:Ljava/util/concurrent/ExecutorService;

.field public final ᴵˊ:Lˆˏ/ˑﹳ;


# direct methods
.method public constructor <init>(Lˆˏ/ˑﹳ;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lʽⁱ/ᵎﹶ;

    iget-object v0, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lˑי/ʽ;

    invoke-direct {p0, v0}, Lʽⁱ/ᵎﹶ;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lˆˏ/ﹳٴ;->ᴵˊ:Lˆˏ/ˑﹳ;

    iget-object p1, v0, Lˑי/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lﹳʽ/ˊʻ;

    const-string v0, "bus.handlers.async-executor"

    invoke-virtual {p1, v0}, Lﹳʽ/ˊʻ;->ᵔﹳ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lˆˏ/ﹳٴ;->ʽʽ:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final ˉˆ(Ljava/lang/Object;Ljava/lang/Object;Lˎᐧ/ⁱˊ;)V
    .locals 7

    new-instance v0, Lʿי/ˎᐧ;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lʿי/ˎᐧ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object p1, v1, Lˆˏ/ﹳٴ;->ʽʽ:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
