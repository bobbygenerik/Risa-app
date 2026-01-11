.class public final Lˈـ/ﹳᐧ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Lﹳᵢ/ᴵˑ;

.field public ˈ:Z

.field public ˑﹳ:Z

.field public final ⁱˊ:Lᵔⁱ/ˉʿ;

.field public final ﹳٴ:Lˈـ/ᵔﹳ;

.field public final synthetic ﾞᴵ:Lˈـ/יـ;


# direct methods
.method public constructor <init>(Lˈـ/יـ;Lˈـ/ʻٴ;ILˈـ/ˈ;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˈـ/ﹳᐧ;->ﾞᴵ:Lˈـ/יـ;

    new-instance v0, Lᵔⁱ/ˉʿ;

    const-string v1, "ExoPlayer:RtspMediaPeriod:RtspLoaderWrapper "

    invoke-static {p3, v1}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lᵔⁱ/ˉʿ;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lˈـ/ﹳᐧ;->ⁱˊ:Lᵔⁱ/ˉʿ;

    iget-object v0, p1, Lˈـ/יـ;->ʾˋ:Lᵔⁱ/ˑﹳ;

    new-instance v5, Lﹳᵢ/ᴵˑ;

    const/4 v1, 0x0

    invoke-direct {v5, v0, v1, v1}, Lﹳᵢ/ᴵˑ;-><init>(Lᵔⁱ/ˑﹳ;Lⁱᴵ/ﾞʻ;Lⁱᴵ/ʼˎ;)V

    iput-object v5, p0, Lˈـ/ﹳᐧ;->ʽ:Lﹳᵢ/ᴵˑ;

    new-instance v1, Lˈـ/ᵔﹳ;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lˈـ/ᵔﹳ;-><init>(Lˈـ/יـ;Lˈـ/ʻٴ;ILﹳᵢ/ᴵˑ;Lˈـ/ˈ;)V

    iput-object v1, p0, Lˈـ/ﹳᐧ;->ﹳٴ:Lˈـ/ᵔﹳ;

    iget-object p1, v2, Lˈـ/יـ;->ʽʽ:Lﹳי/ʽ;

    iput-object p1, v5, Lﹳᵢ/ᴵˑ;->ﾞᴵ:Lﹳᵢ/ˈⁱ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lˈـ/ﹳᐧ;->ˈ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lˈـ/ﹳᐧ;->ﹳٴ:Lˈـ/ᵔﹳ;

    iget-object v0, v0, Lˈـ/ᵔﹳ;->ⁱˊ:Lˈـ/ﾞᴵ;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lˈـ/ﾞᴵ;->ٴʼ:Z

    iput-boolean v1, p0, Lˈـ/ﹳᐧ;->ˈ:Z

    iget-object v0, p0, Lˈـ/ﹳᐧ;->ﾞᴵ:Lˈـ/יـ;

    invoke-static {v0}, Lˈـ/יـ;->ﹳٴ(Lˈـ/יـ;)V

    :cond_0
    return-void
.end method
