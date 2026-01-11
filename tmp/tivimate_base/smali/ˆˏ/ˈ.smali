.class public final Lˆˏ/ˈ;
.super Lˆˏ/ⁱˊ;
.source "SourceFile"


# instance fields
.field public final ʽʽ:[Lˉʼ/ˈ;


# direct methods
.method public constructor <init>(Lˆˏ/ﾞᴵ;)V
    .locals 0

    invoke-direct {p0, p1}, Lˆˏ/ⁱˊ;-><init>(Lˆˏ/ﾞᴵ;)V

    check-cast p1, Lʽⁱ/ᵎﹶ;

    iget-object p1, p1, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast p1, Lˑי/ʽ;

    iget-object p1, p1, Lˑי/ʽ;->ʾˋ:Ljava/lang/Object;

    check-cast p1, Lˉʼ/ᵎﹶ;

    iget-object p1, p1, Lˉʼ/ᵎﹶ;->ⁱˊ:[Lˉʼ/ˈ;

    iput-object p1, p0, Lˆˏ/ˈ;->ʽʽ:[Lˉʼ/ˈ;

    return-void
.end method


# virtual methods
.method public final ʾˋ(Lˎᐧ/ⁱˊ;Ljava/lang/Object;Ljava/lang/Iterable;)V
    .locals 6

    .prologue
    iget-object v0, p0, Lˆˏ/ˈ;->ʽʽ:[Lˉʼ/ˈ;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget-object v4, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v4, Lˑי/ʽ;

    check-cast v3, Lٴˏ/ⁱˊ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v4, Lˑי/ʽ;->ʾˋ:Ljava/lang/Object;

    check-cast v3, Lˉʼ/ᵎﹶ;

    iget-object v3, v3, Lˉʼ/ᵎﹶ;->ʽ:Ljava/lang/String;

    new-instance v5, Lٴˏ/ˑﹳ;

    invoke-direct {v5, p2}, Lٴˏ/ˑﹳ;-><init>(Ljava/lang/Object;)V

    invoke-static {v3, v5, v4, p2}, Lٴˏ/ⁱˊ;->ﹳٴ(Ljava/lang/String;Lٴˏ/ˑﹳ;Lˑי/ʽ;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lˆˏ/ⁱˊ;->ᴵˊ:Lʽⁱ/ᵎﹶ;

    invoke-interface {v0, p1, p2, p3}, Lˆˏ/ﾞᴵ;->ʾˋ(Lˎᐧ/ⁱˊ;Ljava/lang/Object;Ljava/lang/Iterable;)V

    return-void
.end method
