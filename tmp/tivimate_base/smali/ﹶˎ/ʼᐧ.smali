.class public final Lﹶˎ/ʼᐧ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/lang/String;

.field public final ˈ:Ljava/lang/String;

.field public final ˑﹳ:Ljava/lang/String;

.field public final ⁱˊ:I

.field public final ﹳٴ:I

.field public final ﾞᴵ:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lﹶˎ/ʼᐧ;->ﹳٴ:I

    iput p2, p0, Lﹶˎ/ʼᐧ;->ⁱˊ:I

    iput-object p3, p0, Lﹶˎ/ʼᐧ;->ʽ:Ljava/lang/String;

    iput-object p4, p0, Lﹶˎ/ʼᐧ;->ˈ:Ljava/lang/String;

    iput-object p5, p0, Lﹶˎ/ʼᐧ;->ˑﹳ:Ljava/lang/String;

    iput-object p6, p0, Lﹶˎ/ʼᐧ;->ﾞᴵ:Ljava/lang/String;

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

    const-class v2, Lﹶˎ/ʼᐧ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lﹶˎ/ʼᐧ;

    iget v2, p0, Lﹶˎ/ʼᐧ;->ﹳٴ:I

    iget v3, p1, Lﹶˎ/ʼᐧ;->ﹳٴ:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lﹶˎ/ʼᐧ;->ⁱˊ:I

    iget v3, p1, Lﹶˎ/ʼᐧ;->ⁱˊ:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lﹶˎ/ʼᐧ;->ʽ:Ljava/lang/String;

    iget-object v3, p1, Lﹶˎ/ʼᐧ;->ʽ:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lﹶˎ/ʼᐧ;->ˈ:Ljava/lang/String;

    iget-object v3, p1, Lﹶˎ/ʼᐧ;->ˈ:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lﹶˎ/ʼᐧ;->ˑﹳ:Ljava/lang/String;

    iget-object v3, p1, Lﹶˎ/ʼᐧ;->ˑﹳ:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lﹶˎ/ʼᐧ;->ﾞᴵ:Ljava/lang/String;

    iget-object p1, p1, Lﹶˎ/ʼᐧ;->ﾞᴵ:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

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
    iget v0, p0, Lﹶˎ/ʼᐧ;->ﹳٴ:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lﹶˎ/ʼᐧ;->ⁱˊ:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    iget-object v2, p0, Lﹶˎ/ʼᐧ;->ʽ:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lﹶˎ/ʼᐧ;->ˈ:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lﹶˎ/ʼᐧ;->ˑﹳ:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lﹶˎ/ʼᐧ;->ﾞᴵ:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method
