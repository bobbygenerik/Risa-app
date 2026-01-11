.class public final Lﹶˑ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lⁱʿ/ﹳٴ;


# instance fields
.field public ʽʽ:I

.field public ʾˋ:I

.field public ˈٴ:Lʿˈ/ʽ;

.field public ᴵˊ:I

.field public final synthetic ᴵᵔ:Lʼᴵ/ٴﹶ;


# direct methods
.method public constructor <init>(Lʼᴵ/ٴﹶ;)V
    .locals 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶˑ/ⁱˊ;->ᴵᵔ:Lʼᴵ/ٴﹶ;

    const/4 v0, -0x1

    iput v0, p0, Lﹶˑ/ⁱˊ;->ʾˋ:I

    iget-object p1, p1, Lʼᴵ/ٴﹶ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ltz p1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lﹶˑ/ⁱˊ;->ᴵˊ:I

    iput p1, p0, Lﹶˑ/ⁱˊ;->ʽʽ:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot coerce value to an empty range: maximum "

    const-string v2, " is less than minimum 0."

    invoke-static {p1, v1, v2}, Lʼﾞ/ˊˋ;->ʼᐧ(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .prologue
    iget v0, p0, Lﹶˑ/ⁱˊ;->ʾˋ:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lﹶˑ/ⁱˊ;->ﹳٴ()V

    :cond_0
    iget v0, p0, Lﹶˑ/ⁱˊ;->ʾˋ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .prologue
    iget v0, p0, Lﹶˑ/ⁱˊ;->ʾˋ:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lﹶˑ/ⁱˊ;->ﹳٴ()V

    :cond_0
    iget v0, p0, Lﹶˑ/ⁱˊ;->ʾˋ:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lﹶˑ/ⁱˊ;->ˈٴ:Lʿˈ/ʽ;

    const/4 v2, 0x0

    iput-object v2, p0, Lﹶˑ/ⁱˊ;->ˈٴ:Lʿˈ/ʽ;

    iput v1, p0, Lﹶˑ/ⁱˊ;->ʾˋ:I

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ﹳٴ()V
    .locals 7

    .prologue
    iget-object v0, p0, Lﹶˑ/ⁱˊ;->ᴵᵔ:Lʼᴵ/ٴﹶ;

    iget-object v1, v0, Lʼᴵ/ٴﹶ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    iget v2, p0, Lﹶˑ/ⁱˊ;->ʽʽ:I

    const/4 v3, 0x0

    if-gez v2, :cond_0

    iput v3, p0, Lﹶˑ/ⁱˊ;->ʾˋ:I

    const/4 v0, 0x0

    iput-object v0, p0, Lﹶˑ/ⁱˊ;->ˈٴ:Lʿˈ/ʽ;

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-le v2, v4, :cond_1

    new-instance v0, Lʿˈ/ʽ;

    iget v2, p0, Lﹶˑ/ⁱˊ;->ᴵˊ:I

    invoke-static {v1}, Lﹶˑ/ˆʾ;->ˈˏ(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-direct {v0, v2, v1, v6}, Lʿˈ/ﹳٴ;-><init>(III)V

    iput-object v0, p0, Lﹶˑ/ⁱˊ;->ˈٴ:Lʿˈ/ʽ;

    iput v5, p0, Lﹶˑ/ⁱˊ;->ʽʽ:I

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lʼᴵ/ٴﹶ;->ʽ:Lʻᵢ/ﹳٴ;

    check-cast v0, Lᴵⁱ/ʼᐧ;

    iget v2, p0, Lﹶˑ/ⁱˊ;->ʽʽ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lᴵⁱ/ʼᐧ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʻᵢ/ˑﹳ;

    if-nez v0, :cond_2

    new-instance v0, Lʿˈ/ʽ;

    iget v2, p0, Lﹶˑ/ⁱˊ;->ᴵˊ:I

    invoke-static {v1}, Lﹶˑ/ˆʾ;->ˈˏ(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-direct {v0, v2, v1, v6}, Lʿˈ/ﹳٴ;-><init>(III)V

    iput-object v0, p0, Lﹶˑ/ⁱˊ;->ˈٴ:Lʿˈ/ʽ;

    iput v5, p0, Lﹶˑ/ⁱˊ;->ʽʽ:I

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lʻᵢ/ˑﹳ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v0, v0, Lʻᵢ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v2, p0, Lﹶˑ/ⁱˊ;->ᴵˊ:I

    invoke-static {v2, v1}, Lˈˊ/ˉˆ;->ˉٴ(II)Lʿˈ/ʽ;

    move-result-object v2

    iput-object v2, p0, Lﹶˑ/ⁱˊ;->ˈٴ:Lʿˈ/ʽ;

    add-int/2addr v1, v0

    iput v1, p0, Lﹶˑ/ⁱˊ;->ᴵˊ:I

    if-nez v0, :cond_3

    move v3, v6

    :cond_3
    add-int/2addr v1, v3

    iput v1, p0, Lﹶˑ/ⁱˊ;->ʽʽ:I

    :goto_0
    iput v6, p0, Lﹶˑ/ⁱˊ;->ʾˋ:I

    return-void
.end method
