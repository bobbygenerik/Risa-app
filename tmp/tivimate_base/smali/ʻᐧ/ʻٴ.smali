.class public final Lʻᐧ/ʻٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/lang/String;

.field public final ⁱˊ:I

.field public final ﹳٴ:I


# direct methods
.method public constructor <init>(Landroidx/preference/Preference;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lʻᐧ/ʻٴ;->ʽ:Ljava/lang/String;

    iget v0, p1, Landroidx/preference/Preference;->ˊᵔ:I

    iput v0, p0, Lʻᐧ/ʻٴ;->ﹳٴ:I

    iget p1, p1, Landroidx/preference/Preference;->ـﹶ:I

    iput p1, p0, Lʻᐧ/ʻٴ;->ⁱˊ:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    instance-of v0, p1, Lʻᐧ/ʻٴ;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lʻᐧ/ʻٴ;

    iget v0, p0, Lʻᐧ/ʻٴ;->ﹳٴ:I

    iget v2, p1, Lʻᐧ/ʻٴ;->ﹳٴ:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lʻᐧ/ʻٴ;->ⁱˊ:I

    iget v2, p1, Lʻᐧ/ʻٴ;->ⁱˊ:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lʻᐧ/ʻٴ;->ʽ:Ljava/lang/String;

    iget-object p1, p1, Lʻᐧ/ʻٴ;->ʽ:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    const/16 v0, 0x20f

    iget v1, p0, Lʻᐧ/ʻٴ;->ﹳٴ:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lʻᐧ/ʻٴ;->ⁱˊ:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lʻᐧ/ʻٴ;->ʽ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
