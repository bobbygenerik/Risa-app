.class public final synthetic Lᵔﹶ/ˉʿ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lـˊ/ˑﹳ;
.implements Lˆʽ/ˑﹳ;
.implements Lᐧˎ/ˆʾ;
.implements Lᐧˎ/ٴﹶ;
.implements Lᐧˎ/ﾞᴵ;
.implements Lⁱᴵ/ٴﹶ;
.implements Lﹳʽ/ﾞᴵ;
.implements Lﹳʽ/ʾˋ;
.implements Lˏـ/ﹳٴ;
.implements Lˏ/ˈ;


# instance fields
.field public final synthetic ʾˋ:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lᵔﹶ/ˉʿ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lᵔﹶ/ˉʿ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic ʼˎ()Landroid/graphics/ColorSpace$Named;
    .locals 1

    sget-object v0, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    return-object v0
.end method

.method public static bridge synthetic ʽ(Landroid/content/res/Configuration;)I
    .locals 0

    iget p0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    return p0
.end method

.method public static bridge synthetic ٴﹶ()Landroid/graphics/ColorSpace$Named;
    .locals 1

    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    .prologue
    iget v0, p0, Lᵔﹶ/ˉʿ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lﹳᵢ/ﹳـ;

    iget-object p1, p1, Lﹳᵢ/ﹳـ;->ⁱˊ:Lⁱᴵ/ٴﹶ;

    invoke-interface {p1}, Lⁱᴵ/ٴﹶ;->ﹳٴ()V

    return-void

    :pswitch_0
    check-cast p1, Lⁱᴵ/ʼˎ;

    invoke-virtual {p1}, Lⁱᴵ/ʼˎ;->ﹳٴ()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    iget v0, p0, Lᵔﹶ/ˉʿ;->ʾˋ:I

    sparse-switch v0, :sswitch_data_0

    check-cast p1, Lﹳᵢ/ʾᵎ;

    invoke-interface {p1}, Lﹳᵢ/ʾᵎ;->ᵔʾ()Lﹳᵢ/ʻᵎ;

    move-result-object p1

    iget-object p1, p1, Lﹳᵢ/ʻᵎ;->ⁱˊ:Lʼʻ/ʿᵢ;

    new-instance v0, Lﹳᵢ/ᴵʼ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lﹳᵢ/ᴵʼ;-><init>(I)V

    invoke-static {p1, v0}, Lʼʻ/ﹳᐧ;->ʽﹳ(Ljava/util/List;Lˆʽ/ˑﹳ;)Ljava/util/AbstractList;

    move-result-object p1

    invoke-static {p1}, Lʼʻ/ᵎⁱ;->ٴﹶ(Ljava/util/Collection;)Lʼʻ/ᵎⁱ;

    move-result-object p1

    return-object p1

    :sswitch_0
    check-cast p1, Lˊﾞ/ˉˆ;

    invoke-interface {p1}, Lˊﾞ/ˉˆ;->ˈ()Lˊﾞ/ˉˆ;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_1
    new-instance v0, Lʻʿ/ˆʾ;

    check-cast p1, Lᐧˎ/ˏי;

    invoke-direct {v0, p1}, Lʻʿ/ˆʾ;-><init>(Lᐧˎ/ˏי;)V

    return-object v0

    :sswitch_2
    check-cast p1, Lⁱˉ/ⁱˊ;

    iget p1, p1, Lⁱˉ/ⁱˊ;->ﹳᐧ:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0xa -> :sswitch_1
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method public ˆʾ()Lـˊ/ﾞᴵ;
    .locals 2

    .prologue
    iget v0, p0, Lᵔﹶ/ˉʿ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lʿـ/ﹳٴ;

    invoke-direct {v0}, Lʿـ/ﹳٴ;-><init>()V

    return-object v0

    :pswitch_0
    new-instance v0, Lـˊ/ﹳᐧ;

    invoke-direct {v0}, Lـˊ/ﹳᐧ;-><init>()V

    return-object v0

    :pswitch_1
    new-instance v0, Lᵢـ/ᵢˏ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lـˊ/ⁱˊ;-><init>(Z)V

    return-object v0

    :pswitch_2
    new-instance v0, Lـˊ/ˉʿ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lـˊ/ⁱˊ;-><init>(Z)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ˈ(Landroidx/leanback/widget/ʻٴ;)Ljava/lang/Object;
    .locals 4

    .prologue
    new-instance v0, Lﹳי/ⁱˊ;

    const-class v1, Lﹳי/ﹳٴ;

    invoke-virtual {p1, v1}, Landroidx/leanback/widget/ʻٴ;->ʾᵎ(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    sget-object v1, Lﹳי/ʽ;->ᴵˊ:Lﹳי/ʽ;

    if-nez v1, :cond_1

    const-class v2, Lﹳי/ʽ;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lﹳי/ʽ;->ᴵˊ:Lﹳי/ʽ;

    if-nez v1, :cond_0

    new-instance v1, Lﹳי/ʽ;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lﹳי/ʽ;-><init>(I)V

    sput-object v1, Lﹳי/ʽ;->ᴵˊ:Lﹳי/ʽ;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v2

    goto :goto_2

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    invoke-direct {v0, p1, v1}, Lﹳי/ⁱˊ;-><init>(Ljava/util/Set;Lﹳי/ʽ;)V

    return-object v0
.end method

.method public ˑﹳ(Ljava/lang/Object;Lʽⁱ/ʼᐧ;)V
    .locals 1

    check-cast p1, Lʽⁱ/ᵔי;

    new-instance v0, Lʽⁱ/ᵎˊ;

    invoke-direct {v0, p2}, Lʽⁱ/ᵎˊ;-><init>(Lʽⁱ/ʼᐧ;)V

    invoke-interface {p1, v0}, Lʽⁱ/ᵔי;->ٴᵢ(Lʽⁱ/ᵎˊ;)V

    return-void
.end method

.method public ᵎﹶ(Lˏـ/ˉʿ;)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-virtual {p1}, Lˏـ/ˉʿ;->ᵎﹶ()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lˏـ/ˉʿ;->ˑﹳ()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lﹳˎ/ⁱˊ;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Crashlytics report successfully enqueued to DataTransport: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lﹳˎ/ⁱˊ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lיˎ/ʽ;->ﹳٴ:Lיˎ/ʽ;

    invoke-virtual {v1, v0}, Lיˎ/ʽ;->ⁱˊ(Ljava/lang/String;)V

    iget-object p1, p1, Lﹳˎ/ⁱˊ;->ʽ:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Deleted report file: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lיˎ/ʽ;->ⁱˊ(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Crashlytics could not delete report file: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lיˎ/ʽ;->ˈ(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lˏـ/ˉʿ;->ˈ()Ljava/lang/Exception;

    move-result-object p1

    const-string v0, "FirebaseCrashlytics"

    const-string v1, "Crashlytics report could not be enqueued to DataTransport"

    nop

    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public ᵔᵢ(Lﹳˋ/ʽʽ;)Ljava/lang/Object;
    .locals 4

    .prologue
    iget v0, p0, Lᵔﹶ/ˉʿ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lﹳʽ/ʼˎ;

    iget-object p1, p1, Lﹳʽ/ʼˎ;->ˈٴ:Lﹳʽ/ᴵᵔ;

    invoke-static {p1}, Lﹳʽ/ʼˎ;->ˊʻ(Lﹳʽ/ᴵᵔ;)V

    iget-object v0, p1, Lﹳʽ/ᴵᵔ;->ˊʻ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    sget-object v1, Lﹳʽ/ⁱˊ;->ˈ:Lﹳʽ/ⁱˊ;

    iget-object v2, p1, Lﹳʽ/ᴵᵔ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-class v3, Lٴʻ/ᵔᵢ;

    invoke-virtual {v1, v3, v2}, Lﹳʽ/ⁱˊ;->ﹳٴ(Ljava/lang/Class;Ljava/lang/String;)Lﹳʽ/ᵎﹶ;

    move-result-object v1

    iget-object v2, p1, Lﹳʽ/ᴵᵔ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    invoke-virtual {v1, v2}, Lﹳʽ/ᵎﹶ;->ﹳٴ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lٴʻ/ᵔᵢ;

    iget-object p1, p1, Lﹳʽ/ᴵᵔ;->ᴵᵔ:Ljava/lang/Object;

    check-cast p1, Lᴵﹳ/י;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown output prefix type"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object p1, Lﹳʽ/יـ;->ﹳٴ:Lʾᐧ/ﹳٴ;

    invoke-virtual {p1}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lﹳʽ/יـ;->ﹳٴ(I)Lʾᐧ/ﹳٴ;

    move-result-object p1

    invoke-virtual {p1}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lﹳʽ/יـ;->ⁱˊ(I)Lʾᐧ/ﹳٴ;

    move-result-object p1

    invoke-virtual {p1}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    :goto_1
    new-instance p1, Lʼˑ/ˈ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    return-object p1

    :pswitch_0
    check-cast p1, Lﹳʾ/ᵔᵢ;

    new-instance v0, Lﹶˆ/ᵔʾ;

    invoke-direct {v0, p1}, Lﹶˆ/ᵔʾ;-><init>(Lﹳʾ/ᵔᵢ;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lʼˑ/ⁱˊ;

    check-cast p1, Lﹳʾ/ᵔᵢ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    invoke-static {p1}, Lʼﾞ/ˊˋ;->ˑﹳ(I)Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v0

    :cond_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use HMAC in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    check-cast p1, Lﹳʾ/ﹳٴ;

    iget-object v0, p1, Lﹳʾ/ﹳٴ;->ˈٴ:Lﹳʾ/ˈ;

    iget v0, v0, Lﹳʾ/ˈ;->ﹳٴ:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    new-instance v0, Lﹶˆ/ᵔʾ;

    invoke-direct {v0, p1}, Lﹶˆ/ᵔʾ;-><init>(Lﹳʾ/ﹳٴ;)V

    return-object v0

    :cond_5
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "AesCmacKey size wrong, must be 32 bytes"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    check-cast p1, Lﹳʾ/ﹳٴ;

    iget-object p1, p1, Lﹳʾ/ﹳٴ;->ˈٴ:Lﹳʾ/ˈ;

    iget p1, p1, Lﹳʾ/ˈ;->ﹳٴ:I

    const/16 v0, 0x20

    if-ne p1, v0, :cond_7

    new-instance p1, Lʼˑ/ⁱˊ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Lʼﾞ/ˊˋ;->ˈ(I)Z

    move-result v0

    if-eqz v0, :cond_6

    return-object p1

    :cond_6
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use AES-CMAC in FIPS-mode."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "AesCmacKey size wrong, must be 32 bytes"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ⁱˊ(Ljava/lang/Object;)V
    .locals 4

    .prologue
    iget v0, p0, Lᵔﹶ/ˉʿ;->ʾˋ:I

    check-cast p1, Lʽⁱ/ᵔי;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p1}, Lʽⁱ/ᵔי;->ᵔʾ()V

    return-void

    :pswitch_0
    new-instance v0, Landroidx/media3/exoplayer/ExoTimeoutException;

    const-string v1, "Player release timed out."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroidx/media3/exoplayer/ExoPlaybackException;

    const/4 v2, 0x2

    const/16 v3, 0x3eb

    invoke-direct {v1, v2, v0, v3}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(ILjava/lang/Exception;I)V

    invoke-interface {p1, v1}, Lʽⁱ/ᵔי;->ˉٴ(Landroidx/media3/common/PlaybackException;)V

    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public ﹳٴ()V
    .locals 0

    return-void
.end method

.method public ﾞᴵ(Lﹳˋ/ʽʽ;)Lﹳʽ/ᴵᵔ;
    .locals 0

    check-cast p1, Lﹳʽ/ʼˎ;

    iget-object p1, p1, Lﹳʽ/ʼˎ;->ˈٴ:Lﹳʽ/ᴵᵔ;

    invoke-static {p1}, Lﹳʽ/ʼˎ;->ˊʻ(Lﹳʽ/ᴵᵔ;)V

    return-object p1
.end method
