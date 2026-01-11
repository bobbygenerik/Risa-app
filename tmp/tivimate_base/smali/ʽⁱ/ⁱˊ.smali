.class public final Lʽⁱ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:[Landroid/net/Uri;

.field public final ˈ:[Lʽⁱ/ᴵˊ;

.field public final ˑﹳ:[I

.field public final ᵎﹶ:[Ljava/lang/String;

.field public final ⁱˊ:I

.field public final ﹳٴ:I

.field public final ﾞᴵ:[J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-static {v2, v3, v4, v0, v1}, Lʼﾞ/ˊˋ;->ـˆ(IIIII)V

    const/16 v0, 0x8

    const/16 v1, 0x9

    const/4 v2, 0x5

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-static {v2, v3, v4, v0, v1}, Lʼﾞ/ˊˋ;->ـˆ(IIIII)V

    const/16 v0, 0xa

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    return-void
.end method

.method public constructor <init>(II[I[Lʽⁱ/ᴵˊ;[J[Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p3

    array-length v1, p4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    iput p1, p0, Lʽⁱ/ⁱˊ;->ﹳٴ:I

    iput p2, p0, Lʽⁱ/ⁱˊ;->ⁱˊ:I

    iput-object p3, p0, Lʽⁱ/ⁱˊ;->ˑﹳ:[I

    iput-object p4, p0, Lʽⁱ/ⁱˊ;->ˈ:[Lʽⁱ/ᴵˊ;

    iput-object p5, p0, Lʽⁱ/ⁱˊ;->ﾞᴵ:[J

    array-length p1, p4

    new-array p1, p1, [Landroid/net/Uri;

    iput-object p1, p0, Lʽⁱ/ⁱˊ;->ʽ:[Landroid/net/Uri;

    :goto_1
    iget-object p1, p0, Lʽⁱ/ⁱˊ;->ʽ:[Landroid/net/Uri;

    array-length p2, p1

    if-ge v2, p2, :cond_2

    aget-object p2, p4, v2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_2

    :cond_1
    iget-object p2, p2, Lʽⁱ/ᴵˊ;->ⁱˊ:Lʽⁱ/ʼʼ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p2, Lʽⁱ/ʼʼ;->ﹳٴ:Landroid/net/Uri;

    :goto_2
    aput-object p2, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iput-object p6, p0, Lʽⁱ/ⁱˊ;->ᵎﹶ:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_2

    const-class v1, Lʽⁱ/ⁱˊ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lʽⁱ/ⁱˊ;

    iget v1, p0, Lʽⁱ/ⁱˊ;->ﹳٴ:I

    iget v2, p1, Lʽⁱ/ⁱˊ;->ﹳٴ:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lʽⁱ/ⁱˊ;->ⁱˊ:I

    iget v2, p1, Lʽⁱ/ⁱˊ;->ⁱˊ:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lʽⁱ/ⁱˊ;->ˈ:[Lʽⁱ/ᴵˊ;

    iget-object v2, p1, Lʽⁱ/ⁱˊ;->ˈ:[Lʽⁱ/ᴵˊ;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lʽⁱ/ⁱˊ;->ˑﹳ:[I

    iget-object v2, p1, Lʽⁱ/ⁱˊ;->ˑﹳ:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lʽⁱ/ⁱˊ;->ﾞᴵ:[J

    iget-object v2, p1, Lʽⁱ/ⁱˊ;->ﾞᴵ:[J

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lʽⁱ/ⁱˊ;->ᵎﹶ:[Ljava/lang/String;

    iget-object p1, p1, Lʽⁱ/ⁱˊ;->ᵎﹶ:[Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lʽⁱ/ⁱˊ;->ﹳٴ:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lʽⁱ/ⁱˊ;->ⁱˊ:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    const-wide/16 v1, 0x0

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lʽⁱ/ⁱˊ;->ˈ:[Lʽⁱ/ᴵˊ;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lʽⁱ/ⁱˊ;->ˑﹳ:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lʽⁱ/ⁱˊ;->ﾞᴵ:[J

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([J)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v1

    mul-int/lit16 v2, v2, 0x3c1

    iget-object v0, p0, Lʽⁱ/ⁱˊ;->ᵎﹶ:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    return v2
.end method

.method public final ﹳٴ(I)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    add-int/2addr p1, v0

    :goto_0
    iget-object v1, p0, Lʽⁱ/ⁱˊ;->ˑﹳ:[I

    array-length v2, v1

    if-ge p1, v2, :cond_1

    aget v1, v1, p1

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method
