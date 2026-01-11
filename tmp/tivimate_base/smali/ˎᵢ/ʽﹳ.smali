.class public final Lˎᵢ/ʽﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʻٴ:I

.field public final ʼˎ:Z

.field public ʼᐧ:Lʿˋ/ᵔʾ;

.field public final ʽ:Ljava/util/ArrayList;

.field public ʽﹳ:Lˈˊ/ˉˆ;

.field public final ʾᵎ:I

.field public final ˆʾ:Z

.field public final ˈ:Ljava/util/ArrayList;

.field public final ˉʿ:Lˎᵢ/ⁱˊ;

.field public ˉˆ:Ljavax/net/ssl/SSLSocketFactory;

.field public final ˏי:Lˎᵢ/ﾞᴵ;

.field public final ˑﹳ:Lᵔﹶ/ˉʿ;

.field public יـ:Ljavax/net/ssl/HostnameVerifier;

.field public ـˆ:I

.field public ٴﹶ:Lˎᵢ/ﾞʻ;

.field public final ᵎﹶ:Z

.field public final ᵔʾ:Ljavax/net/SocketFactory;

.field public final ᵔᵢ:Lˎᵢ/ⁱˊ;

.field public ᵔﹳ:Ljava/util/List;

.field public ⁱˊ:Lˉˆ/ʿ;

.field public final ﹳٴ:Lˏˆ/ﹳٴ;

.field public final ﹳᐧ:Ljava/util/List;

.field public final ﾞʻ:Lˎᵢ/ⁱˊ;

.field public final ﾞᴵ:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lˏˆ/ﹳٴ;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lˏˆ/ﹳٴ;-><init>(I)V

    iput-object v0, p0, Lˎᵢ/ʽﹳ;->ﹳٴ:Lˏˆ/ﹳٴ;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lˎᵢ/ʽﹳ;->ʽ:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lˎᵢ/ʽﹳ;->ˈ:Ljava/util/ArrayList;

    sget-object v0, Lⁱᐧ/ˑﹳ;->ﹳٴ:Ljava/util/TimeZone;

    new-instance v0, Lᵔﹶ/ˉʿ;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lᵔﹶ/ˉʿ;-><init>(I)V

    iput-object v0, p0, Lˎᵢ/ʽﹳ;->ˑﹳ:Lᵔﹶ/ˉʿ;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˎᵢ/ʽﹳ;->ﾞᴵ:Z

    iput-boolean v0, p0, Lˎᵢ/ʽﹳ;->ᵎﹶ:Z

    sget-object v1, Lˎᵢ/ⁱˊ;->ʾˋ:Lˎᵢ/ⁱˊ;

    iput-object v1, p0, Lˎᵢ/ʽﹳ;->ᵔᵢ:Lˎᵢ/ⁱˊ;

    iput-boolean v0, p0, Lˎᵢ/ʽﹳ;->ʼˎ:Z

    iput-boolean v0, p0, Lˎᵢ/ʽﹳ;->ˆʾ:Z

    sget-object v0, Lˎᵢ/ﾞʻ;->ʼᐧ:Lˎᵢ/ⁱˊ;

    iput-object v0, p0, Lˎᵢ/ʽﹳ;->ٴﹶ:Lˎᵢ/ﾞʻ;

    sget-object v0, Lˎᵢ/ⁱˊ;->ᴵˊ:Lˎᵢ/ⁱˊ;

    iput-object v0, p0, Lˎᵢ/ʽﹳ;->ﾞʻ:Lˎᵢ/ⁱˊ;

    iput-object v1, p0, Lˎᵢ/ʽﹳ;->ˉʿ:Lˎᵢ/ⁱˊ;

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lˎᵢ/ʽﹳ;->ᵔʾ:Ljavax/net/SocketFactory;

    sget-object v0, Lˎᵢ/ʻٴ;->ʽʽ:Ljava/util/List;

    iput-object v0, p0, Lˎᵢ/ʽﹳ;->ᵔﹳ:Ljava/util/List;

    sget-object v0, Lˎᵢ/ʻٴ;->ᴵˊ:Ljava/util/List;

    iput-object v0, p0, Lˎᵢ/ʽﹳ;->ﹳᐧ:Ljava/util/List;

    sget-object v0, Lʻﹶ/ʽ;->ﹳٴ:Lʻﹶ/ʽ;

    iput-object v0, p0, Lˎᵢ/ʽﹳ;->יـ:Ljavax/net/ssl/HostnameVerifier;

    sget-object v0, Lˎᵢ/ﾞᴵ;->ʽ:Lˎᵢ/ﾞᴵ;

    iput-object v0, p0, Lˎᵢ/ʽﹳ;->ˏי:Lˎᵢ/ﾞᴵ;

    const/16 v0, 0x2710

    iput v0, p0, Lˎᵢ/ʽﹳ;->ʻٴ:I

    iput v0, p0, Lˎᵢ/ʽﹳ;->ـˆ:I

    iput v0, p0, Lˎᵢ/ʽﹳ;->ʾᵎ:I

    return-void
.end method
