.class public final Lʼᴵ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lⁱʿ/ﹳٴ;


# instance fields
.field public final synthetic ʽʽ:Lʼᴵ/ˑﹳ;

.field public ʾˋ:Ljava/lang/Object;

.field public ᴵˊ:I


# direct methods
.method public constructor <init>(Lʼᴵ/ˑﹳ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼᴵ/ˈ;->ʽʽ:Lʼᴵ/ˑﹳ;

    const/4 p1, -0x2

    iput p1, p0, Lʼᴵ/ˈ;->ᴵˊ:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .prologue
    iget v0, p0, Lʼᴵ/ˈ;->ᴵˊ:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lʼᴵ/ˈ;->ﹳٴ()V

    :cond_0
    iget v0, p0, Lʼᴵ/ˈ;->ᴵˊ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .prologue
    iget v0, p0, Lʼᴵ/ˈ;->ᴵˊ:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lʼᴵ/ˈ;->ﹳٴ()V

    :cond_0
    iget v0, p0, Lʼᴵ/ˈ;->ᴵˊ:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lʼᴵ/ˈ;->ʾˋ:Ljava/lang/Object;

    const/4 v1, -0x1

    iput v1, p0, Lʼᴵ/ˈ;->ᴵˊ:I

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
    .locals 2

    .prologue
    iget v0, p0, Lʼᴵ/ˈ;->ᴵˊ:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lʼᴵ/ˈ;->ʽʽ:Lʼᴵ/ˑﹳ;

    iget-object v0, v0, Lʼᴵ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lʽˋ/ـˆ;

    invoke-virtual {v0}, Lʽˋ/ـˆ;->ʽ()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lﹶˑ/ᵔᵢ;->ᵎⁱ:Lﹶˑ/ᵔᵢ;

    iget-object v1, p0, Lʼᴵ/ˈ;->ʾˋ:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lﹶˑ/ᵔᵢ;->ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lʼᴵ/ˈ;->ʾˋ:Ljava/lang/Object;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iput v0, p0, Lʼᴵ/ˈ;->ᴵˊ:I

    return-void
.end method
