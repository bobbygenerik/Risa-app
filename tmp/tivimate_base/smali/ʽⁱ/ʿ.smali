.class public final Lʽⁱ/ʿ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Z

.field public final ˈ:[I

.field public final ˑﹳ:[Z

.field public final ⁱˊ:Lʽⁱ/ـˏ;

.field public final ﹳٴ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    const/4 v0, 0x3

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    const/4 v0, 0x4

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    return-void
.end method

.method public constructor <init>(Lʽⁱ/ـˏ;Z[I[Z)V
    .locals 4

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lʽⁱ/ـˏ;->ﹳٴ:I

    iput v0, p0, Lʽⁱ/ʿ;->ﹳٴ:I

    array-length v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    array-length v1, p4

    if-ne v0, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    iput-object p1, p0, Lʽⁱ/ʿ;->ⁱˊ:Lʽⁱ/ـˏ;

    if-eqz p2, :cond_1

    if-le v0, v3, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Lʽⁱ/ʿ;->ʽ:Z

    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lʽⁱ/ʿ;->ˈ:[I

    invoke-virtual {p4}, [Z->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Z

    iput-object p1, p0, Lʽⁱ/ʿ;->ˑﹳ:[Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lʽⁱ/ʿ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lʽⁱ/ʿ;

    iget-boolean v2, p0, Lʽⁱ/ʿ;->ʽ:Z

    iget-boolean v3, p1, Lʽⁱ/ʿ;->ʽ:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lʽⁱ/ʿ;->ⁱˊ:Lʽⁱ/ـˏ;

    iget-object v3, p1, Lʽⁱ/ʿ;->ⁱˊ:Lʽⁱ/ـˏ;

    invoke-virtual {v2, v3}, Lʽⁱ/ـˏ;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lʽⁱ/ʿ;->ˈ:[I

    iget-object v3, p1, Lʽⁱ/ʿ;->ˈ:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lʽⁱ/ʿ;->ˑﹳ:[Z

    iget-object p1, p1, Lʽⁱ/ʿ;->ˑﹳ:[Z

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lʽⁱ/ʿ;->ⁱˊ:Lʽⁱ/ـˏ;

    invoke-virtual {v0}, Lʽⁱ/ـˏ;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lʽⁱ/ʿ;->ʽ:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lʽⁱ/ʿ;->ˈ:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lʽⁱ/ʿ;->ˑﹳ:[Z

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final ﹳٴ(I)Z
    .locals 1

    .prologue
    iget-object v0, p0, Lʽⁱ/ʿ;->ˈ:[I

    aget p1, v0, p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
