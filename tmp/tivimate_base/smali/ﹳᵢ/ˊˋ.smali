.class public final Lﹳᵢ/ˊˋ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹳᵢ/ʼʼ;


# instance fields
.field public ʽ:Lⁱᴵ/ˉʿ;

.field public ˈ:Lʻᴵ/יـ;

.field public final ˑﹳ:I

.field public final ⁱˊ:Lٴˉ/ﹳٴ;

.field public final ﹳٴ:Lـˊ/ˑﹳ;


# direct methods
.method public constructor <init>(Lـˊ/ˑﹳ;Lˊﾞ/ˉʿ;)V
    .locals 2

    new-instance v0, Lٴˉ/ﹳٴ;

    const/16 v1, 0x1b

    invoke-direct {v0, v1, p2}, Lٴˉ/ﹳٴ;-><init>(ILjava/lang/Object;)V

    new-instance p2, Lʾﹶ/ʽ;

    const/4 v1, 0x3

    invoke-direct {p2, v1}, Lʾﹶ/ʽ;-><init>(I)V

    new-instance v1, Lʻᴵ/יـ;

    invoke-direct {v1}, Lʻᴵ/יـ;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳᵢ/ˊˋ;->ﹳٴ:Lـˊ/ˑﹳ;

    iput-object v0, p0, Lﹳᵢ/ˊˋ;->ⁱˊ:Lٴˉ/ﹳٴ;

    iput-object p2, p0, Lﹳᵢ/ˊˋ;->ʽ:Lⁱᴵ/ˉʿ;

    iput-object v1, p0, Lﹳᵢ/ˊˋ;->ˈ:Lʻᴵ/יـ;

    const/high16 p1, 0x100000

    iput p1, p0, Lﹳᵢ/ˊˋ;->ˑﹳ:I

    return-void
.end method


# virtual methods
.method public final ʽ(Lʽⁱ/ᴵˊ;)Lﹳᵢ/ᴵˊ;
    .locals 9

    iget-object v0, p1, Lʽⁱ/ᴵˊ;->ⁱˊ:Lʽⁱ/ʼʼ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lﹳᵢ/ʼˈ;

    iget-object v0, p0, Lﹳᵢ/ˊˋ;->ʽ:Lⁱᴵ/ˉʿ;

    invoke-interface {v0, p1}, Lⁱᴵ/ˉʿ;->ﹳٴ(Lʽⁱ/ᴵˊ;)Lⁱᴵ/ﾞʻ;

    move-result-object v5

    iget-object v6, p0, Lﹳᵢ/ˊˋ;->ˈ:Lʻᴵ/יـ;

    iget v7, p0, Lﹳᵢ/ˊˋ;->ˑﹳ:I

    const/4 v8, 0x0

    iget-object v3, p0, Lﹳᵢ/ˊˋ;->ﹳٴ:Lـˊ/ˑﹳ;

    iget-object v4, p0, Lﹳᵢ/ˊˋ;->ⁱˊ:Lٴˉ/ﹳٴ;

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lﹳᵢ/ʼˈ;-><init>(Lʽⁱ/ᴵˊ;Lـˊ/ˑﹳ;Lٴˉ/ﹳٴ;Lⁱᴵ/ﾞʻ;Lʻᴵ/יـ;ILʽⁱ/ﹳᐧ;)V

    return-object v1
.end method

.method public final ˈ(Lⁱᴵ/ˉʿ;)Lﹳᵢ/ʼʼ;
    .locals 1

    const-string v0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Lᐧˎ/ﹳٴ;->ᵔᵢ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lﹳᵢ/ˊˋ;->ʽ:Lⁱᴵ/ˉʿ;

    return-object p0
.end method

.method public final ˑﹳ(Lʻᴵ/יـ;)Lﹳᵢ/ʼʼ;
    .locals 1

    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Lᐧˎ/ﹳٴ;->ᵔᵢ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lﹳᵢ/ˊˋ;->ˈ:Lʻᴵ/יـ;

    return-object p0
.end method

.method public final ⁱˊ()Lﹳᵢ/ʼʼ;
    .locals 0

    return-object p0
.end method

.method public final ﹳٴ(Z)Lﹳᵢ/ʼʼ;
    .locals 0

    return-object p0
.end method

.method public final ﾞᴵ(Lˋⁱ/ﾞᴵ;)Lﹳᵢ/ʼʼ;
    .locals 0

    return-object p0
.end method
