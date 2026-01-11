.class public final Lᵎˑ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:I

.field public final ﹳٴ:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lᵎˑ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    iput p1, p0, Lᵎˑ/ﹳٴ;->ⁱˊ:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_3

    const-class v0, Lᵎˑ/ﹳٴ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lᵎˑ/ﹳٴ;

    iget v0, p0, Lᵎˑ/ﹳٴ;->ⁱˊ:I

    iget v1, p1, Lᵎˑ/ﹳٴ;->ⁱˊ:I

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lᵎˑ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    iget-object p1, p1, Lᵎˑ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lᵎˑ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lᵎˑ/ﹳٴ;->ⁱˊ:I

    add-int/2addr v0, v1

    return v0
.end method
