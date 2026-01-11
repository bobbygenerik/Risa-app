.class public final Lⁱʼ/ـˆ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lⁱʼ/ᵔﹳ;


# instance fields
.field public final ⁱˊ:Landroid/content/res/Resources;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/Resources;I)V
    .locals 0

    iput p2, p0, Lⁱʼ/ـˆ;->ﹳٴ:I

    iput-object p1, p0, Lⁱʼ/ـˆ;->ⁱˊ:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Lⁱʼ/ʻٴ;)Lⁱʼ/ʼᐧ;
    .locals 3

    .prologue
    iget v0, p0, Lⁱʼ/ـˆ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lⁱʼ/ⁱˊ;

    iget-object v0, p0, Lⁱʼ/ـˆ;->ⁱˊ:Landroid/content/res/Resources;

    sget-object v1, Lⁱʼ/ʼʼ;->ⁱˊ:Lⁱʼ/ʼʼ;

    invoke-direct {p1, v0, v1}, Lⁱʼ/ⁱˊ;-><init>(Landroid/content/res/Resources;Lⁱʼ/ʼᐧ;)V

    return-object p1

    :pswitch_0
    new-instance v0, Lⁱʼ/ⁱˊ;

    const-class v1, Landroid/net/Uri;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {p1, v1, v2}, Lⁱʼ/ʻٴ;->ʽ(Ljava/lang/Class;Ljava/lang/Class;)Lⁱʼ/ʼᐧ;

    move-result-object p1

    iget-object v1, p0, Lⁱʼ/ـˆ;->ⁱˊ:Landroid/content/res/Resources;

    invoke-direct {v0, v1, p1}, Lⁱʼ/ⁱˊ;-><init>(Landroid/content/res/Resources;Lⁱʼ/ʼᐧ;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lⁱʼ/ⁱˊ;

    const-class v1, Landroid/net/Uri;

    const-class v2, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p1, v1, v2}, Lⁱʼ/ʻٴ;->ʽ(Ljava/lang/Class;Ljava/lang/Class;)Lⁱʼ/ʼᐧ;

    move-result-object p1

    iget-object v1, p0, Lⁱʼ/ـˆ;->ⁱˊ:Landroid/content/res/Resources;

    invoke-direct {v0, v1, p1}, Lⁱʼ/ⁱˊ;-><init>(Landroid/content/res/Resources;Lⁱʼ/ʼᐧ;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
