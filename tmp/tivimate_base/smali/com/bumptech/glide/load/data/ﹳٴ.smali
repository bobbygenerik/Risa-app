.class public final Lcom/bumptech/glide/load/data/ﹳٴ;
.super Lcom/bumptech/glide/load/data/ⁱˊ;
.source "SourceFile"


# instance fields
.field public final synthetic ᴵᵔ:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;I)V
    .locals 0

    iput p3, p0, Lcom/bumptech/glide/load/data/ﹳٴ;->ᴵᵔ:I

    const/4 p3, 0x1

    invoke-direct {p0, p3, p2, p1}, Lcom/bumptech/glide/load/data/ⁱˊ;-><init>(ILjava/lang/Comparable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final ʼˎ(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/Object;
    .locals 2

    .prologue
    iget v0, p0, Lcom/bumptech/glide/load/data/ﹳٴ;->ᴵᵔ:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "r"

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FileDescriptor is null for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    const-string v0, "r"

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p2

    if-eqz p2, :cond_1

    return-object p2

    :cond_1
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FileDescriptor is null for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ᵎﹶ(Ljava/lang/Object;)V
    .locals 1

    .prologue
    iget v0, p0, Lcom/bumptech/glide/load/data/ﹳٴ;->ᴵᵔ:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    return-void

    :pswitch_0
    check-cast p1, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ﹳٴ()Ljava/lang/Class;
    .locals 1

    .prologue
    iget v0, p0, Lcom/bumptech/glide/load/data/ﹳٴ;->ᴵᵔ:I

    packed-switch v0, :pswitch_data_0

    const-class v0, Landroid/os/ParcelFileDescriptor;

    return-object v0

    :pswitch_0
    const-class v0, Landroid/content/res/AssetFileDescriptor;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
