.class public final Lˆˏ/ᵎﹶ;
.super Lʽⁱ/ᵎﹶ;
.source "SourceFile"

# interfaces
.implements Lˆˏ/ﾞᴵ;


# instance fields
.field public final ᴵˊ:Lˆˏ/ˑﹳ;


# direct methods
.method public constructor <init>(Lˑי/ʽ;Lˆˏ/ˑﹳ;)V
    .locals 0

    invoke-direct {p0, p1}, Lʽⁱ/ᵎﹶ;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lˆˏ/ᵎﹶ;->ᴵˊ:Lˆˏ/ˑﹳ;

    return-void
.end method


# virtual methods
.method public final ʾˋ(Lˎᐧ/ⁱˊ;Ljava/lang/Object;Ljava/lang/Iterable;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p1, Lˎᐧ/ⁱˊ;->ﹳٴ:Z

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lˆˏ/ᵎﹶ;->ᴵˊ:Lˆˏ/ˑﹳ;

    invoke-interface {v1, v0, p2, p1}, Lˆˏ/ˑﹳ;->ˉˆ(Ljava/lang/Object;Ljava/lang/Object;Lˎᐧ/ⁱˊ;)V

    goto :goto_0

    :cond_0
    return-void
.end method
