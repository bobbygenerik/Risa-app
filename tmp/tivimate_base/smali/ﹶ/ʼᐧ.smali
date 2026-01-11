.class public final Lﹶ/ʼᐧ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:Lᵢ/ﹳٴ;

.field public ˈ:Z

.field public final ˑﹳ:Lﹶ/ʼʼ;

.field public ᵎﹶ:Lˑʼ/ᵎˊ;

.field public ⁱˊ:Lﹶ/ⁱˊ;

.field public final ﹳٴ:Landroid/content/Context;

.field public final ﾞᴵ:Lﹶ/ᵢˏ;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lﹶ/ʼᐧ;->ﹳٴ:Landroid/content/Context;

    sget-object v0, Lﹶ/ⁱˊ;->ʽ:Lﹶ/ⁱˊ;

    iput-object v0, p0, Lﹶ/ʼᐧ;->ⁱˊ:Lﹶ/ⁱˊ;

    sget-object v0, Lﹶ/ʼʼ;->ﹳٴ:Lﹶ/ʼʼ;

    iput-object v0, p0, Lﹶ/ʼᐧ;->ˑﹳ:Lﹶ/ʼʼ;

    sget-object v0, Lﹶ/ˉˆ;->ﹳٴ:Lﹶ/ᵢˏ;

    iput-object v0, p0, Lﹶ/ʼᐧ;->ﾞᴵ:Lﹶ/ᵢˏ;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶ/ʼᐧ;->ﹳٴ:Landroid/content/Context;

    sget-object p1, Lﹶ/ⁱˊ;->ʽ:Lﹶ/ⁱˊ;

    iput-object p1, p0, Lﹶ/ʼᐧ;->ⁱˊ:Lﹶ/ⁱˊ;

    sget-object p1, Lﹶ/ʼʼ;->ﹳٴ:Lﹶ/ʼʼ;

    iput-object p1, p0, Lﹶ/ʼᐧ;->ˑﹳ:Lﹶ/ʼʼ;

    sget-object p1, Lﹶ/ˉˆ;->ﹳٴ:Lﹶ/ᵢˏ;

    iput-object p1, p0, Lﹶ/ʼᐧ;->ﾞᴵ:Lﹶ/ᵢˏ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ()Lﹶ/ʾᵎ;
    .locals 3

    .prologue
    iget-boolean v0, p0, Lﹶ/ʼᐧ;->ˈ:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iput-boolean v1, p0, Lﹶ/ʼᐧ;->ˈ:Z

    iget-object v0, p0, Lﹶ/ʼᐧ;->ʽ:Lᵢ/ﹳٴ;

    if-nez v0, :cond_0

    new-instance v0, Lᵢ/ﹳٴ;

    const/4 v1, 0x0

    new-array v1, v1, [Lʾﾞ/ᵔᵢ;

    invoke-direct {v0, v1}, Lᵢ/ﹳٴ;-><init>([Lʾﾞ/ᵔᵢ;)V

    iput-object v0, p0, Lﹶ/ʼᐧ;->ʽ:Lᵢ/ﹳٴ;

    :cond_0
    iget-object v0, p0, Lﹶ/ʼᐧ;->ᵎﹶ:Lˑʼ/ᵎˊ;

    if-nez v0, :cond_1

    new-instance v0, Lˑʼ/ᵎˊ;

    iget-object v1, p0, Lﹶ/ʼᐧ;->ﹳٴ:Landroid/content/Context;

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lˑʼ/ᵎˊ;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lﹶ/ʼᐧ;->ᵎﹶ:Lˑʼ/ᵎˊ;

    :cond_1
    new-instance v0, Lﹶ/ʾᵎ;

    invoke-direct {v0, p0}, Lﹶ/ʾᵎ;-><init>(Lﹶ/ʼᐧ;)V

    return-object v0
.end method
