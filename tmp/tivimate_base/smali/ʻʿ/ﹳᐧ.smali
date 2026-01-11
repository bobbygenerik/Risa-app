.class public final Lʻʿ/ﹳᐧ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˋᵔ/ˈ;
.implements Lˋᵔ/ﾞᴵ;


# instance fields
.field public ⁱˊ:Ljava/lang/Object;

.field public final synthetic ﹳٴ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lʻʿ/ﹳᐧ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lʻʿ/ᵔﹳ;->ˑﹳ()Landroid/media/metrics/LogSessionId;

    move-result-object v0

    iput-object v0, p0, Lʻʿ/ﹳᐧ;->ⁱˊ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/ClipData;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lʻʿ/ﹳᐧ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lˋᵔ/ʽ;->ⁱˊ(Landroid/content/ClipData;I)Landroid/view/ContentInfo$Builder;

    move-result-object p1

    iput-object p1, p0, Lʻʿ/ﹳᐧ;->ⁱˊ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/ContentInfo;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lʻʿ/ﹳᐧ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lʻʿ/ﹳᐧ;->ⁱˊ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public build()Lˋᵔ/ᵎﹶ;
    .locals 3

    new-instance v0, Lˋᵔ/ᵎﹶ;

    new-instance v1, Lʻʿ/ﹳᐧ;

    iget-object v2, p0, Lʻʿ/ﹳᐧ;->ⁱˊ:Ljava/lang/Object;

    check-cast v2, Landroid/view/ContentInfo$Builder;

    invoke-virtual {v2}, Landroid/view/ContentInfo$Builder;->build()Landroid/view/ContentInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lʻʿ/ﹳᐧ;-><init>(Landroid/view/ContentInfo;)V

    invoke-direct {v0, v1}, Lˋᵔ/ᵎﹶ;-><init>(Lˋᵔ/ﾞᴵ;)V

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lʻʿ/ﹳᐧ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Landroid/view/ContentInfo$Builder;

    invoke-virtual {v0, p1}, Landroid/view/ContentInfo$Builder;->setExtras(Landroid/os/Bundle;)Landroid/view/ContentInfo$Builder;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    iget v0, p0, Lʻʿ/ﹳᐧ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContentInfoCompat{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lʻʿ/ﹳᐧ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Landroid/view/ContentInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public ʽ()Landroid/view/ContentInfo;
    .locals 1

    iget-object v0, p0, Lʻʿ/ﹳᐧ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Landroid/view/ContentInfo;

    return-object v0
.end method

.method public ˈ(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lʻʿ/ﹳᐧ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Landroid/view/ContentInfo$Builder;

    invoke-virtual {v0, p1}, Landroid/view/ContentInfo$Builder;->setLinkUri(Landroid/net/Uri;)Landroid/view/ContentInfo$Builder;

    return-void
.end method

.method public ˑﹳ()I
    .locals 1

    iget-object v0, p0, Lʻʿ/ﹳᐧ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Landroid/view/ContentInfo;

    invoke-virtual {v0}, Landroid/view/ContentInfo;->getSource()I

    move-result v0

    return v0
.end method

.method public ᵎﹶ(Landroid/media/metrics/LogSessionId;)V
    .locals 2

    iget-object v0, p0, Lʻʿ/ﹳᐧ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Landroid/media/metrics/LogSessionId;

    invoke-static {}, Lʻʿ/ᵔﹳ;->ˑﹳ()Landroid/media/metrics/LogSessionId;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/metrics/LogSessionId;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iput-object p1, p0, Lʻʿ/ﹳᐧ;->ⁱˊ:Ljava/lang/Object;

    return-void
.end method

.method public ⁱˊ()I
    .locals 1

    iget-object v0, p0, Lʻʿ/ﹳᐧ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Landroid/view/ContentInfo;

    invoke-virtual {v0}, Landroid/view/ContentInfo;->getFlags()I

    move-result v0

    return v0
.end method

.method public ﹳٴ()Landroid/content/ClipData;
    .locals 1

    iget-object v0, p0, Lʻʿ/ﹳᐧ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Landroid/view/ContentInfo;

    invoke-virtual {v0}, Landroid/view/ContentInfo;->getClip()Landroid/content/ClipData;

    move-result-object v0

    return-object v0
.end method

.method public ﾞᴵ(I)V
    .locals 1

    iget-object v0, p0, Lʻʿ/ﹳᐧ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Landroid/view/ContentInfo$Builder;

    invoke-virtual {v0, p1}, Landroid/view/ContentInfo$Builder;->setFlags(I)Landroid/view/ContentInfo$Builder;

    return-void
.end method
