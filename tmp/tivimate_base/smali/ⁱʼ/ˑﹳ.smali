.class public final Lⁱʼ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/ˑﹳ;


# instance fields
.field public final ʽʽ:Lˆᴵ/ⁱˊ;

.field public final ʾˋ:Landroid/content/res/Resources$Theme;

.field public final ˈٴ:I

.field public final ᴵˊ:Landroid/content/res/Resources;

.field public ᴵᵔ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Lˆᴵ/ⁱˊ;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lⁱʼ/ˑﹳ;->ʾˋ:Landroid/content/res/Resources$Theme;

    iput-object p2, p0, Lⁱʼ/ˑﹳ;->ᴵˊ:Landroid/content/res/Resources;

    iput-object p3, p0, Lⁱʼ/ˑﹳ;->ʽʽ:Lˆᴵ/ⁱˊ;

    iput p4, p0, Lⁱʼ/ˑﹳ;->ˈٴ:I

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    return-void
.end method

.method public final ˑﹳ()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ⁱˊ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lⁱʼ/ˑﹳ;->ᴵᵔ:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lⁱʼ/ˑﹳ;->ʽʽ:Lˆᴵ/ⁱˊ;

    iget v1, v1, Lˆᴵ/ⁱˊ;->ﹳٴ:I

    packed-switch v1, :pswitch_data_0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :pswitch_0
    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :pswitch_1
    check-cast v0, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ﹳٴ()Ljava/lang/Class;
    .locals 1

    .prologue
    iget-object v0, p0, Lⁱʼ/ˑﹳ;->ʽʽ:Lˆᴵ/ⁱˊ;

    iget v0, v0, Lˆᴵ/ⁱˊ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    const-class v0, Ljava/io/InputStream;

    goto :goto_0

    :pswitch_0
    const-class v0, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :pswitch_1
    const-class v0, Landroid/content/res/AssetFileDescriptor;

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ﾞᴵ(Lcom/bumptech/glide/ᵎﹶ;Lcom/bumptech/glide/load/data/ˈ;)V
    .locals 4

    .prologue
    :try_start_0
    iget-object p1, p0, Lⁱʼ/ˑﹳ;->ʽʽ:Lˆᴵ/ⁱˊ;

    iget-object v0, p0, Lⁱʼ/ˑﹳ;->ʾˋ:Landroid/content/res/Resources$Theme;

    iget-object v1, p0, Lⁱʼ/ˑﹳ;->ᴵˊ:Landroid/content/res/Resources;

    iget v2, p0, Lⁱʼ/ˑﹳ;->ˈٴ:I

    iget v3, p1, Lˆᴵ/ⁱˊ;->ﹳٴ:I

    packed-switch v3, :pswitch_data_0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_0

    :pswitch_0
    iget-object p1, p1, Lˆᴵ/ⁱˊ;->ⁱˊ:Landroid/content/Context;

    invoke-static {p1, p1, v2, v0}, Lcom/google/android/gms/internal/play_billing/י;->יـ(Landroid/content/Context;Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lⁱʼ/ˑﹳ;->ᴵᵔ:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/ˈ;->ˈ(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/ˈ;->ʽ(Ljava/lang/Exception;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
