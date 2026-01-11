.class public final Lʼᵢ/ˏי;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Z

.field public final ⁱˊ:Z

.field public final ﹳٴ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼᵢ/ˏי;->ﹳٴ:Ljava/lang/String;

    iput-boolean p2, p0, Lʼᵢ/ˏי;->ⁱˊ:Z

    iput-boolean p3, p0, Lʼᵢ/ˏי;->ʽ:Z

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

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lʼᵢ/ˏי;

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lʼᵢ/ˏי;

    iget-object v2, p0, Lʼᵢ/ˏי;->ﹳٴ:Ljava/lang/String;

    iget-object v3, p1, Lʼᵢ/ˏי;->ﹳٴ:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lʼᵢ/ˏי;->ⁱˊ:Z

    iget-boolean v3, p1, Lʼᵢ/ˏי;->ⁱˊ:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lʼᵢ/ˏי;->ʽ:Z

    iget-boolean p1, p1, Lʼᵢ/ˏי;->ʽ:Z

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    iget-object v0, p0, Lʼᵢ/ˏי;->ﹳٴ:Ljava/lang/String;

    const/16 v1, 0x1f

    invoke-static {v1, v1, v0}, Lʼﾞ/ˊˋ;->ˉʿ(IILjava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lʼᵢ/ˏי;->ⁱˊ:Z

    const/16 v3, 0x4d5

    const/16 v4, 0x4cf

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v1, p0, Lʼᵢ/ˏי;->ʽ:Z

    if-eqz v1, :cond_1

    move v3, v4

    :cond_1
    add-int/2addr v0, v3

    return v0
.end method
