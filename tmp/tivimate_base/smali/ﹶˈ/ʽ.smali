.class public final Lﹶˈ/ʽ;
.super Lﹶˈ/ˈ;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# instance fields
.field public final ʽʽ:I

.field public final ʾˋ:Lﹶˈ/ˈ;

.field public final ᴵˊ:I


# direct methods
.method public constructor <init>(Lﹶˈ/ˈ;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶˈ/ʽ;->ʾˋ:Lﹶˈ/ˈ;

    iput p2, p0, Lﹶˈ/ʽ;->ᴵˊ:I

    invoke-virtual {p1}, Lﹶˈ/ﹳٴ;->ﹳٴ()I

    move-result p1

    invoke-static {p2, p3, p1}, Lʽٴ/ˈ;->ˈ(III)V

    sub-int/2addr p3, p2

    iput p3, p0, Lﹶˈ/ʽ;->ʽʽ:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 4

    .prologue
    iget v0, p0, Lﹶˈ/ʽ;->ʽʽ:I

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    iget v0, p0, Lﹶˈ/ʽ;->ᴵˊ:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lﹶˈ/ʽ;->ʾˋ:Lﹶˈ/ˈ;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "index: "

    const-string v3, ", size: "

    invoke-static {p1, v0, v2, v3}, Landroid/support/v4/media/session/ﹳٴ;->ٴﹶ(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final subList(II)Ljava/util/List;
    .locals 2

    iget v0, p0, Lﹶˈ/ʽ;->ʽʽ:I

    invoke-static {p1, p2, v0}, Lʽٴ/ˈ;->ˈ(III)V

    new-instance v0, Lﹶˈ/ʽ;

    iget v1, p0, Lﹶˈ/ʽ;->ᴵˊ:I

    add-int/2addr p1, v1

    add-int/2addr v1, p2

    iget-object p2, p0, Lﹶˈ/ʽ;->ʾˋ:Lﹶˈ/ˈ;

    invoke-direct {v0, p2, p1, v1}, Lﹶˈ/ʽ;-><init>(Lﹶˈ/ˈ;II)V

    return-object v0
.end method

.method public final ﹳٴ()I
    .locals 1

    iget v0, p0, Lﹶˈ/ʽ;->ʽʽ:I

    return v0
.end method
