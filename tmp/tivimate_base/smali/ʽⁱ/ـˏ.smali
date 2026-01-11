.class public final Lʽⁱ/ـˏ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:I

.field public final ˈ:[Lʽⁱ/ﹳᐧ;

.field public ˑﹳ:I

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lʽⁱ/ﹳᐧ;)V
    .locals 7

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    iput-object p1, p0, Lʽⁱ/ـˏ;->ⁱˊ:Ljava/lang/String;

    iput-object p2, p0, Lʽⁱ/ـˏ;->ˈ:[Lʽⁱ/ﹳᐧ;

    array-length p1, p2

    iput p1, p0, Lʽⁱ/ـˏ;->ﹳٴ:I

    aget-object p1, p2, v2

    iget-object p1, p1, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-static {p1}, Lʽⁱ/ˉٴ;->ʼˎ(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    aget-object p1, p2, v2

    iget-object p1, p1, Lʽⁱ/ﹳᐧ;->ˉʿ:Ljava/lang/String;

    invoke-static {p1}, Lʽⁱ/ˉٴ;->ʼˎ(Ljava/lang/String;)I

    move-result p1

    :cond_1
    iput p1, p0, Lʽⁱ/ـˏ;->ʽ:I

    aget-object p1, p2, v2

    iget-object p1, p1, Lʽⁱ/ﹳᐧ;->ˈ:Ljava/lang/String;

    const-string v0, ""

    const-string v3, "und"

    if-eqz p1, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move-object p1, v0

    :cond_3
    aget-object v4, p2, v2

    iget v4, v4, Lʽⁱ/ﹳᐧ;->ﾞᴵ:I

    or-int/lit16 v4, v4, 0x4000

    :goto_1
    array-length v5, p2

    if-ge v1, v5, :cond_8

    aget-object v5, p2, v1

    iget-object v5, v5, Lʽⁱ/ﹳᐧ;->ˈ:Ljava/lang/String;

    if-eqz v5, :cond_4

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    move-object v5, v0

    :cond_5
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    aget-object p1, p2, v2

    iget-object p1, p1, Lʽⁱ/ﹳᐧ;->ˈ:Ljava/lang/String;

    aget-object p2, p2, v1

    iget-object p2, p2, Lʽⁱ/ﹳᐧ;->ˈ:Ljava/lang/String;

    const-string v0, "languages"

    invoke-static {v1, v0, p1, p2}, Lʽⁱ/ـˏ;->ⁱˊ(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    aget-object v5, p2, v1

    iget v5, v5, Lʽⁱ/ﹳᐧ;->ﾞᴵ:I

    or-int/lit16 v5, v5, 0x4000

    if-eq v4, v5, :cond_7

    aget-object p1, p2, v2

    iget p1, p1, Lʽⁱ/ﹳᐧ;->ﾞᴵ:I

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p1

    aget-object p2, p2, v1

    iget p2, p2, Lʽⁱ/ﹳᐧ;->ﾞᴵ:I

    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "role flags"

    invoke-static {v1, v0, p1, p2}, Lʽⁱ/ـˏ;->ⁱˊ(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method

.method public static ⁱˊ(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Different "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " combined in one TrackGroup: \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' (track 0) and \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' (track "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string p0, "TrackGroup"

    const-string p1, ""

    invoke-static {p0, p1, v0}, Lᐧˎ/ﹳٴ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

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

    const-class v2, Lʽⁱ/ـˏ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lʽⁱ/ـˏ;

    iget-object v2, p0, Lʽⁱ/ـˏ;->ⁱˊ:Ljava/lang/String;

    iget-object v3, p1, Lʽⁱ/ـˏ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lʽⁱ/ـˏ;->ˈ:[Lʽⁱ/ﹳᐧ;

    iget-object p1, p1, Lʽⁱ/ـˏ;->ˈ:[Lʽⁱ/ﹳᐧ;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    iget v0, p0, Lʽⁱ/ـˏ;->ˑﹳ:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lʽⁱ/ـˏ;->ⁱˊ:Ljava/lang/String;

    const/16 v1, 0x1f

    const/16 v2, 0x20f

    invoke-static {v2, v1, v0}, Lʼﾞ/ˊˋ;->ˉʿ(IILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lʽⁱ/ـˏ;->ˈ:[Lʽⁱ/ﹳᐧ;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lʽⁱ/ـˏ;->ˑﹳ:I

    :cond_0
    iget v0, p0, Lʽⁱ/ـˏ;->ˑﹳ:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lʽⁱ/ـˏ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lʽⁱ/ـˏ;->ˈ:[Lʽⁱ/ﹳᐧ;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﹳٴ(Lʽⁱ/ﹳᐧ;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lʽⁱ/ـˏ;->ˈ:[Lʽⁱ/ﹳᐧ;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
