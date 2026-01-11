.class public final Lⁱי/ᵔʾ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʻٴ:Z

.field public final ʼˎ:I

.field public final ʼᐧ:J

.field public final ʽ:Lⁱי/ˉʿ;

.field public final ʽﹳ:J

.field public final ʾᵎ:Ljava/lang/String;

.field public final ˆʾ:Lʽⁱ/ˑﹳ;

.field public final ˈ:Lⁱי/ʽ;

.field public final ˉʿ:Z

.field public final ˉˆ:Lⁱי/ˏᵢ;

.field public final ˏי:J

.field public ˑﹳ:Lˆʽ/ٴﹶ;

.field public יـ:Lⁱי/ᵔᵢ;

.field public ـˆ:Z

.field public final ٴﹶ:I

.field public final ᵎﹶ:Lⁱי/ʽ;

.field public ᵔʾ:Lⁱי/ᴵʼ;

.field public final ᵔᵢ:Landroid/os/Looper;

.field public final ᵔﹳ:J

.field public final ⁱˊ:Lᐧˎ/ˏי;

.field public final ﹳٴ:Landroid/content/Context;

.field public final ﹳᐧ:J

.field public ﾞʻ:I

.field public ﾞᴵ:Lˆʽ/ٴﹶ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lᵢـ/ᵔᵢ;)V
    .locals 10

    .prologue
    new-instance v0, Lⁱי/ˉʿ;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p2}, Lⁱי/ˉʿ;-><init>(ILjava/lang/Object;)V

    new-instance p2, Lⁱי/ʽ;

    const/4 v2, 0x1

    invoke-direct {p2, p1, v2}, Lⁱי/ʽ;-><init>(Landroid/content/Context;I)V

    new-instance v3, Lⁱי/ʽ;

    invoke-direct {v3, p1, v1}, Lⁱי/ʽ;-><init>(Landroid/content/Context;I)V

    new-instance v4, Lʻʿ/ٴﹶ;

    invoke-direct {v4, v1}, Lʻʿ/ٴﹶ;-><init>(I)V

    new-instance v1, Lⁱי/ʽ;

    const/4 v5, 0x3

    invoke-direct {v1, p1, v5}, Lⁱי/ʽ;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lⁱי/ᵔʾ;->ﹳٴ:Landroid/content/Context;

    iput-object v0, p0, Lⁱי/ᵔʾ;->ʽ:Lⁱי/ˉʿ;

    iput-object p2, p0, Lⁱי/ᵔʾ;->ˈ:Lⁱי/ʽ;

    iput-object v3, p0, Lⁱי/ᵔʾ;->ˑﹳ:Lˆʽ/ٴﹶ;

    iput-object v4, p0, Lⁱי/ᵔʾ;->ﾞᴵ:Lˆʽ/ٴﹶ;

    iput-object v1, p0, Lⁱי/ᵔʾ;->ᵎﹶ:Lⁱי/ʽ;

    sget-object p1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lⁱי/ᵔʾ;->ᵔᵢ:Landroid/os/Looper;

    sget-object p1, Lʽⁱ/ˑﹳ;->ʽ:Lʽⁱ/ˑﹳ;

    iput-object p1, p0, Lⁱי/ᵔʾ;->ˆʾ:Lʽⁱ/ˑﹳ;

    iput v2, p0, Lⁱי/ᵔʾ;->ٴﹶ:I

    const/4 p1, 0x0

    iput p1, p0, Lⁱי/ᵔʾ;->ﾞʻ:I

    iput-boolean v2, p0, Lⁱי/ᵔʾ;->ˉʿ:Z

    sget-object p1, Lⁱי/ᴵʼ;->ˈ:Lⁱי/ᴵʼ;

    iput-object p1, p0, Lⁱי/ᵔʾ;->ᵔʾ:Lⁱי/ᴵʼ;

    const-wide/16 p1, 0x1388

    iput-wide p1, p0, Lⁱי/ᵔʾ;->ʼᐧ:J

    const-wide/16 p1, 0x3a98

    iput-wide p1, p0, Lⁱי/ᵔʾ;->ᵔﹳ:J

    const-wide/16 p1, 0xbb8

    iput-wide p1, p0, Lⁱי/ᵔʾ;->ﹳᐧ:J

    sget-object p1, Lⁱי/ˏᵢ;->ⁱˊ:Lⁱי/ˏᵢ;

    iput-object p1, p0, Lⁱי/ᵔʾ;->ˉˆ:Lⁱי/ˏᵢ;

    const-wide/16 p1, 0x14

    invoke-static {p1, p2}, Lᐧˎ/ʼʼ;->ʼˈ(J)J

    move-result-wide v6

    const-wide/16 p1, 0x1f4

    invoke-static {p1, p2}, Lᐧˎ/ʼʼ;->ʼˈ(J)J

    move-result-wide v8

    new-instance v3, Lⁱי/ᵔᵢ;

    const v4, 0x3f7851ec    # 0.97f

    const v5, 0x3f83d70a    # 1.03f

    invoke-direct/range {v3 .. v9}, Lⁱי/ᵔᵢ;-><init>(FFJJ)V

    iput-object v3, p0, Lⁱי/ᵔʾ;->יـ:Lⁱי/ᵔᵢ;

    sget-object v0, Lᐧˎ/ˏי;->ﹳٴ:Lᐧˎ/ˏי;

    iput-object v0, p0, Lⁱי/ᵔʾ;->ⁱˊ:Lᐧˎ/ˏי;

    iput-wide p1, p0, Lⁱי/ᵔʾ;->ˏי:J

    const-wide/16 p1, 0x7d0

    iput-wide p1, p0, Lⁱי/ᵔʾ;->ʽﹳ:J

    iput-boolean v2, p0, Lⁱי/ᵔʾ;->ʻٴ:Z

    const-string p1, ""

    iput-object p1, p0, Lⁱי/ᵔʾ;->ʾᵎ:Ljava/lang/String;

    const/16 p1, -0x3e8

    iput p1, p0, Lⁱי/ᵔʾ;->ʼˎ:I

    new-instance p1, Lᵔﹶ/ᵔʾ;

    invoke-direct {p1}, Lᵔﹶ/ᵔʾ;-><init>()V

    return-void
.end method
