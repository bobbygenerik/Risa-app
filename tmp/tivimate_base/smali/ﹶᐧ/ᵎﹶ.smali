.class public final Lﹶᐧ/ᵎﹶ;
.super Lﹳˋ/ٴﹶ;
.source "SourceFile"


# instance fields
.field public final ᵎˊ:Lﹶᐧ/ﾞᴵ;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lﹶᐧ/ﾞᴵ;

    invoke-direct {v0, p1}, Lﹶᐧ/ﾞᴵ;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lﹶᐧ/ᵎﹶ;->ᵎˊ:Lﹶᐧ/ﾞᴵ;

    return-void
.end method


# virtual methods
.method public final ʾˋ()Z
    .locals 1

    iget-object v0, p0, Lﹶᐧ/ᵎﹶ;->ᵎˊ:Lﹶᐧ/ﾞᴵ;

    iget-boolean v0, v0, Lﹶᐧ/ﾞᴵ;->ˆﾞ:Z

    return v0
.end method

.method public final ˆﾞ(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .locals 1

    .prologue
    sget-object v0, Lـﹶ/ˆʾ;->ٴﹶ:Lـﹶ/ˆʾ;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-object p1

    :cond_1
    iget-object v0, p0, Lﹶᐧ/ᵎﹶ;->ᵎˊ:Lﹶᐧ/ﾞᴵ;

    invoke-virtual {v0, p1}, Lﹶᐧ/ﾞᴵ;->ˆﾞ(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    move-result-object p1

    return-object p1
.end method

.method public final ـˆ([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 1

    .prologue
    sget-object v0, Lـﹶ/ˆʾ;->ٴﹶ:Lـﹶ/ˆʾ;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-object p1

    :cond_1
    iget-object v0, p0, Lﹶᐧ/ᵎﹶ;->ᵎˊ:Lﹶᐧ/ﾞᴵ;

    invoke-virtual {v0, p1}, Lﹶᐧ/ﾞᴵ;->ـˆ([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    return-object p1
.end method

.method public final ٴᵢ(Z)V
    .locals 1

    .prologue
    sget-object v0, Lـﹶ/ˆʾ;->ٴﹶ:Lـﹶ/ˆʾ;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lﹶᐧ/ᵎﹶ;->ᵎˊ:Lﹶᐧ/ﾞᴵ;

    invoke-virtual {v0, p1}, Lﹶᐧ/ﾞᴵ;->ٴᵢ(Z)V

    return-void
.end method

.method public final ᵎⁱ(Z)V
    .locals 2

    .prologue
    iget-object v0, p0, Lﹶᐧ/ᵎﹶ;->ᵎˊ:Lﹶᐧ/ﾞᴵ;

    sget-object v1, Lـﹶ/ˆʾ;->ٴﹶ:Lـﹶ/ˆʾ;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    iput-boolean p1, v0, Lﹶᐧ/ﾞᴵ;->ˆﾞ:Z

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lﹶᐧ/ﾞᴵ;->ᵎⁱ(Z)V

    return-void
.end method
