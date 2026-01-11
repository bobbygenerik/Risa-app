.class public final Lˆʻ/ˈ;
.super Lˆʻ/ˆʾ;
.source "SourceFile"


# instance fields
.field public final ʽ:Z

.field public final ˈ:Z

.field public final ˑﹳ:[Ljava/lang/String;

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﾞᴵ:[Lˆʻ/ˆʾ;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Lˆʻ/ˆʾ;)V
    .locals 1

    const-string v0, "CTOC"

    invoke-direct {p0, v0}, Lˆʻ/ˆʾ;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lˆʻ/ˈ;->ⁱˊ:Ljava/lang/String;

    iput-boolean p2, p0, Lˆʻ/ˈ;->ʽ:Z

    iput-boolean p3, p0, Lˆʻ/ˈ;->ˈ:Z

    iput-object p4, p0, Lˆʻ/ˈ;->ˑﹳ:[Ljava/lang/String;

    iput-object p5, p0, Lˆʻ/ˈ;->ﾞᴵ:[Lˆʻ/ˆʾ;

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

    const-class v2, Lˆʻ/ˈ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lˆʻ/ˈ;

    iget-boolean v2, p0, Lˆʻ/ˈ;->ʽ:Z

    iget-boolean v3, p1, Lˆʻ/ˈ;->ʽ:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lˆʻ/ˈ;->ˈ:Z

    iget-boolean v3, p1, Lˆʻ/ˈ;->ˈ:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lˆʻ/ˈ;->ⁱˊ:Ljava/lang/String;

    iget-object v3, p1, Lˆʻ/ˈ;->ⁱˊ:Ljava/lang/String;

    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lˆʻ/ˈ;->ˑﹳ:[Ljava/lang/String;

    iget-object v3, p1, Lˆʻ/ˈ;->ˑﹳ:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lˆʻ/ˈ;->ﾞᴵ:[Lˆʻ/ˆʾ;

    iget-object p1, p1, Lˆʻ/ˈ;->ﾞᴵ:[Lˆʻ/ˆʾ;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    const/16 v0, 0x20f

    iget-boolean v1, p0, Lˆʻ/ˈ;->ʽ:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lˆʻ/ˈ;->ˈ:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lˆʻ/ˈ;->ⁱˊ:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method
