.class public final Lﹶﾞ/ᐧﾞ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:Z

.field public ˈ:Z

.field public final synthetic ˑﹳ:Lﹶﾞ/ᐧᴵ;

.field public final ⁱˊ:Z

.field public final ﹳٴ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lﹶﾞ/ᐧᴵ;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶﾞ/ᐧﾞ;->ˑﹳ:Lﹶﾞ/ᐧᴵ;

    invoke-static {p2}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    iput-object p2, p0, Lﹶﾞ/ᐧﾞ;->ﹳٴ:Ljava/lang/String;

    iput-boolean p3, p0, Lﹶﾞ/ᐧﾞ;->ⁱˊ:Z

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Z)V
    .locals 2

    iget-object v0, p0, Lﹶﾞ/ᐧﾞ;->ˑﹳ:Lﹶﾞ/ᐧᴵ;

    invoke-virtual {v0}, Lﹶﾞ/ᐧᴵ;->ʼᵢ()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lﹶﾞ/ᐧﾞ;->ﹳٴ:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-boolean p1, p0, Lﹶﾞ/ᐧﾞ;->ˈ:Z

    return-void
.end method

.method public final ﹳٴ()Z
    .locals 3

    .prologue
    iget-boolean v0, p0, Lﹶﾞ/ᐧﾞ;->ʽ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lﹶﾞ/ᐧﾞ;->ʽ:Z

    iget-boolean v0, p0, Lﹶﾞ/ᐧﾞ;->ⁱˊ:Z

    iget-object v1, p0, Lﹶﾞ/ᐧﾞ;->ˑﹳ:Lﹶﾞ/ᐧᴵ;

    invoke-virtual {v1}, Lﹶﾞ/ᐧᴵ;->ʼᵢ()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lﹶﾞ/ᐧﾞ;->ﹳٴ:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lﹶﾞ/ᐧﾞ;->ˈ:Z

    :cond_0
    iget-boolean v0, p0, Lﹶﾞ/ᐧﾞ;->ˈ:Z

    return v0
.end method
