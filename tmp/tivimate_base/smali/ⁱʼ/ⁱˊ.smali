.class public final Lⁱʼ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lⁱʼ/ʼᐧ;


# instance fields
.field public final ʽ:Ljava/lang/Object;

.field public final ⁱˊ:Ljava/lang/Object;

.field public final synthetic ﹳٴ:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lˆᴵ/ⁱˊ;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lⁱʼ/ⁱˊ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lⁱʼ/ⁱˊ;->ʽ:Ljava/lang/Object;

    iput-object p2, p0, Lⁱʼ/ⁱˊ;->ⁱˊ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lⁱʼ/ʼᐧ;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lⁱʼ/ⁱˊ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lⁱʼ/ⁱˊ;->ʽ:Ljava/lang/Object;

    iput-object p2, p0, Lⁱʼ/ⁱˊ;->ⁱˊ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lⁱʼ/ʼᐧ;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lⁱʼ/ⁱˊ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lⁱʼ/ⁱˊ;->ⁱˊ:Ljava/lang/Object;

    iput-object p2, p0, Lⁱʼ/ⁱˊ;->ʽ:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lⁱʼ/ⁱˊ;->ﹳٴ:I

    iput-object p1, p0, Lⁱʼ/ⁱˊ;->ʽ:Ljava/lang/Object;

    iput-object p3, p0, Lⁱʼ/ⁱˊ;->ⁱˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    iget v0, p0, Lⁱʼ/ⁱˊ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MultiModelLoader{modelLoaders="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lⁱʼ/ⁱˊ;->ʽ:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final ⁱˊ(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    iget v0, p0, Lⁱʼ/ⁱˊ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/net/Uri;

    const-string v0, "android.resource"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lⁱʼ/ⁱˊ;->ʽ:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    :goto_1
    const/4 p1, 0x1

    return p1

    :pswitch_1
    iget-object v0, p0, Lⁱʼ/ⁱˊ;->ʽ:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_1
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lⁱʼ/ʼᐧ;

    invoke-interface {v4, p1}, Lⁱʼ/ʼᐧ;->ⁱˊ(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :cond_2
    return v2

    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    goto :goto_1

    :pswitch_3
    check-cast p1, Landroid/net/Uri;

    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "android_asset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ﹳٴ(Ljava/lang/Object;IILʼᵔ/ᵔᵢ;)Lⁱʼ/ˉˆ;
    .locals 8

    .prologue
    iget v0, p0, Lⁱʼ/ⁱˊ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/net/Uri;

    iget-object v0, p0, Lⁱʼ/ⁱˊ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lⁱʼ/ʼᐧ;

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    const-string v6, "ResourceUriLoader"

    const/4 v7, 0x1

    if-ne v2, v7, :cond_1

    const-string v1, "Failed to parse a valid non-0 resource id from: "

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v6, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    nop

    goto/16 :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3, p4}, Lⁱʼ/ʼᐧ;->ﹳٴ(Ljava/lang/Object;IILʼᵔ/ᵔᵢ;)Lⁱʼ/ˉˆ;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :goto_0
    invoke-static {v6, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_4

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Failed to parse resource id from: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lⁱʼ/ⁱˊ;->ʽ:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v6, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed to find resource id for: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    goto :goto_1

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3, p4}, Lⁱʼ/ʼᐧ;->ﹳٴ(Ljava/lang/Object;IILʼᵔ/ᵔᵢ;)Lⁱʼ/ˉˆ;

    move-result-object v5

    goto :goto_1

    :cond_3
    invoke-static {v6, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed to parse resource uri: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    :cond_4
    :goto_1
    return-object v5

    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lⁱʼ/ⁱˊ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/Resources;

    const-string v1, "android.resource://"

    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const/4 v1, 0x5

    const-string v3, "ResourceLoader"

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Received invalid resource id: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    :cond_5
    move-object p1, v2

    :goto_2
    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lⁱʼ/ⁱˊ;->ʽ:Ljava/lang/Object;

    check-cast v0, Lⁱʼ/ʼᐧ;

    invoke-interface {v0, p1, p2, p3, p4}, Lⁱʼ/ʼᐧ;->ﹳٴ(Ljava/lang/Object;IILʼᵔ/ᵔᵢ;)Lⁱʼ/ˉˆ;

    move-result-object v2

    :goto_3
    return-object v2

    :pswitch_1
    iget-object v0, p0, Lⁱʼ/ⁱˊ;->ʽ:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v3

    :goto_4
    if-ge v4, v1, :cond_8

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lⁱʼ/ʼᐧ;

    invoke-interface {v6, p1}, Lⁱʼ/ʼᐧ;->ⁱˊ(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6, p1, p2, p3, p4}, Lⁱʼ/ʼᐧ;->ﹳٴ(Ljava/lang/Object;IILʼᵔ/ᵔᵢ;)Lⁱʼ/ˉˆ;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v5, v6, Lⁱʼ/ˉˆ;->ﹳٴ:Lʼᵔ/ˑﹳ;

    iget-object v6, v6, Lⁱʼ/ˉˆ;->ʽ:Lcom/bumptech/glide/load/data/ˑﹳ;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    if-eqz v5, :cond_9

    new-instance v3, Lⁱʼ/ˉˆ;

    new-instance p1, Lⁱʼ/ˏי;

    iget-object p2, p0, Lⁱʼ/ⁱˊ;->ⁱˊ:Ljava/lang/Object;

    check-cast p2, Lˑٴ/ʽ;

    invoke-direct {p1, v2, p2}, Lⁱʼ/ˏי;-><init>(Ljava/util/ArrayList;Lˑٴ/ʽ;)V

    invoke-direct {v3, v5, p1}, Lⁱʼ/ˉˆ;-><init>(Lʼᵔ/ˑﹳ;Lcom/bumptech/glide/load/data/ˑﹳ;)V

    :cond_9
    return-object v3

    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    sget-object p2, Lˉˈ/ﾞᴵ;->ⁱˊ:Lʼᵔ/ᵎﹶ;

    invoke-virtual {p4, p2}, Lʼᵔ/ᵔᵢ;->ʽ(Lʼᵔ/ᵎﹶ;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/res/Resources$Theme;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    goto :goto_5

    :cond_a
    iget-object p3, p0, Lⁱʼ/ⁱˊ;->ʽ:Ljava/lang/Object;

    check-cast p3, Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    :goto_5
    new-instance p4, Lⁱʼ/ˉˆ;

    new-instance v0, Lˋᵎ/ⁱˊ;

    invoke-direct {v0, p1}, Lˋᵎ/ⁱˊ;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lⁱʼ/ˑﹳ;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v2, p0, Lⁱʼ/ⁱˊ;->ⁱˊ:Ljava/lang/Object;

    check-cast v2, Lˆᴵ/ⁱˊ;

    invoke-direct {v1, p2, p3, v2, p1}, Lⁱʼ/ˑﹳ;-><init>(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Lˆᴵ/ⁱˊ;I)V

    invoke-direct {p4, v0, v1}, Lⁱʼ/ˉˆ;-><init>(Lʼᵔ/ˑﹳ;Lcom/bumptech/glide/load/data/ˑﹳ;)V

    return-object p4

    :pswitch_3
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x16

    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lⁱʼ/ˉˆ;

    new-instance p4, Lˋᵎ/ⁱˊ;

    invoke-direct {p4, p1}, Lˋᵎ/ⁱˊ;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lⁱʼ/ⁱˊ;->ʽ:Ljava/lang/Object;

    check-cast p1, Landroid/content/res/AssetManager;

    iget-object v0, p0, Lⁱʼ/ⁱˊ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lⁱʼ/ﹳٴ;

    iget v0, v0, Lⁱʼ/ﹳٴ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_1

    new-instance v0, Lcom/bumptech/glide/load/data/ٴﹶ;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/bumptech/glide/load/data/ٴﹶ;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;I)V

    goto :goto_6

    :pswitch_4
    new-instance v0, Lcom/bumptech/glide/load/data/ٴﹶ;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/bumptech/glide/load/data/ٴﹶ;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;I)V

    :goto_6
    invoke-direct {p3, p4, v0}, Lⁱʼ/ˉˆ;-><init>(Lʼᵔ/ˑﹳ;Lcom/bumptech/glide/load/data/ˑﹳ;)V

    return-object p3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method
