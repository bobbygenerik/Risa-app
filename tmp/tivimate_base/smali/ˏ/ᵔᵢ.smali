.class public final Lˏ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:Z

.field public final ﹳٴ:Lˏ/ˉˆ;


# direct methods
.method public constructor <init>(Lˏ/ˉˆ;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˏ/ᵔᵢ;->ﹳٴ:Lˏ/ˉˆ;

    iput-boolean p2, p0, Lˏ/ᵔᵢ;->ⁱˊ:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    instance-of v0, p1, Lˏ/ᵔᵢ;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lˏ/ᵔᵢ;

    iget-object v0, p1, Lˏ/ᵔᵢ;->ﹳٴ:Lˏ/ˉˆ;

    iget-object v2, p0, Lˏ/ᵔᵢ;->ﹳٴ:Lˏ/ˉˆ;

    invoke-virtual {v0, v2}, Lˏ/ˉˆ;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lˏ/ᵔᵢ;->ⁱˊ:Z

    iget-boolean v0, p0, Lˏ/ᵔᵢ;->ⁱˊ:Z

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lˏ/ᵔᵢ;->ﹳٴ:Lˏ/ˉˆ;

    invoke-virtual {v0}, Lˏ/ˉˆ;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-boolean v1, p0, Lˏ/ᵔᵢ;->ⁱˊ:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
