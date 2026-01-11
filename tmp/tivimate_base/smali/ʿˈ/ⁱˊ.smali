.class public final Lʿˈ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lⁱʿ/ﹳٴ;


# instance fields
.field public ʽʽ:Z

.field public final ʾˋ:I

.field public ˈٴ:I

.field public final ᴵˊ:I


# direct methods
.method public constructor <init>(III)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lʿˈ/ⁱˊ;->ʾˋ:I

    iput p2, p0, Lʿˈ/ⁱˊ;->ᴵˊ:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p3, :cond_0

    if-gt p1, p2, :cond_1

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    if-lt p1, p2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iput-boolean v0, p0, Lʿˈ/ⁱˊ;->ʽʽ:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move p1, p2

    :goto_2
    iput p1, p0, Lʿˈ/ⁱˊ;->ˈٴ:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-boolean v0, p0, Lʿˈ/ⁱˊ;->ʽʽ:Z

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .prologue
    iget v0, p0, Lʿˈ/ⁱˊ;->ˈٴ:I

    iget v1, p0, Lʿˈ/ⁱˊ;->ᴵˊ:I

    if-ne v0, v1, :cond_1

    iget-boolean v1, p0, Lʿˈ/ⁱˊ;->ʽʽ:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lʿˈ/ⁱˊ;->ʽʽ:Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    iget v1, p0, Lʿˈ/ⁱˊ;->ʾˋ:I

    add-int/2addr v1, v0

    iput v1, p0, Lʿˈ/ⁱˊ;->ˈٴ:I

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
