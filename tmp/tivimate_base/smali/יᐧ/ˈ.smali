.class public final Lיᐧ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lיᐧ/ᵔᵢ;


# instance fields
.field public ʽ:Ljava/lang/Class;

.field public ⁱˊ:I

.field public final ﹳٴ:Lיᐧ/ˑﹳ;


# direct methods
.method public constructor <init>(Lיᐧ/ˑﹳ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lיᐧ/ˈ;->ﹳٴ:Lיᐧ/ˑﹳ;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    instance-of v0, p1, Lיᐧ/ˈ;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lיᐧ/ˈ;

    iget v0, p0, Lיᐧ/ˈ;->ⁱˊ:I

    iget v2, p1, Lיᐧ/ˈ;->ⁱˊ:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lיᐧ/ˈ;->ʽ:Ljava/lang/Class;

    iget-object p1, p1, Lיᐧ/ˈ;->ʽ:Ljava/lang/Class;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    iget v0, p0, Lיᐧ/ˈ;->ⁱˊ:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lיᐧ/ˈ;->ʽ:Ljava/lang/Class;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Key{size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lיᐧ/ˈ;->ⁱˊ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "array="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lיᐧ/ˈ;->ʽ:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﹳٴ()V
    .locals 1

    iget-object v0, p0, Lיᐧ/ˈ;->ﹳٴ:Lיᐧ/ˑﹳ;

    invoke-virtual {v0, p0}, Lʽⁱ/ᵎﹶ;->ˎᐧ(Lיᐧ/ᵔᵢ;)V

    return-void
.end method
