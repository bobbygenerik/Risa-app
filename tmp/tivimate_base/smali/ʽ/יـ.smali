.class public final Lʽ/יـ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/יـ;
.implements Lʽ/ʽ;


# instance fields
.field public ʽʽ:Lʽ/ˏי;

.field public final ʾˋ:Landroidx/lifecycle/ـˆ;

.field public final synthetic ˈٴ:Lʽ/ʽﹳ;

.field public final ᴵˊ:Lˑʼ/ᵔٴ;


# direct methods
.method public constructor <init>(Lʽ/ʽﹳ;Landroidx/lifecycle/ـˆ;Lˑʼ/ᵔٴ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽ/יـ;->ˈٴ:Lʽ/ʽﹳ;

    iput-object p2, p0, Lʽ/יـ;->ʾˋ:Landroidx/lifecycle/ـˆ;

    iput-object p3, p0, Lʽ/יـ;->ᴵˊ:Lˑʼ/ᵔٴ;

    invoke-virtual {p2, p0}, Landroidx/lifecycle/ـˆ;->ﹳٴ(Landroidx/lifecycle/ˏי;)V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .prologue
    iget-object v0, p0, Lʽ/יـ;->ʾˋ:Landroidx/lifecycle/ـˆ;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/ـˆ;->ﾞᴵ(Landroidx/lifecycle/ˏי;)V

    iget-object v0, p0, Lʽ/יـ;->ᴵˊ:Lˑʼ/ᵔٴ;

    iget-object v0, v0, Lˑʼ/ᵔٴ;->ⁱˊ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lʽ/יـ;->ʽʽ:Lʽ/ˏי;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lʽ/ˏי;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lʽ/יـ;->ʽʽ:Lʽ/ˏי;

    return-void
.end method

.method public final ᵎﹶ(Landroidx/lifecycle/ʽﹳ;Landroidx/lifecycle/ˉʿ;)V
    .locals 9

    .prologue
    sget-object p1, Landroidx/lifecycle/ˉʿ;->ON_START:Landroidx/lifecycle/ˉʿ;

    if-ne p2, p1, :cond_0

    iget-object v2, p0, Lʽ/יـ;->ˈٴ:Lʽ/ʽﹳ;

    iget-object p1, v2, Lʽ/ʽﹳ;->ⁱˊ:Lﹶˈ/ᵔᵢ;

    iget-object p2, p0, Lʽ/יـ;->ᴵˊ:Lˑʼ/ᵔٴ;

    invoke-virtual {p1, p2}, Lﹶˈ/ᵔᵢ;->addLast(Ljava/lang/Object;)V

    new-instance p1, Lʽ/ˏי;

    invoke-direct {p1, v2, p2}, Lʽ/ˏי;-><init>(Lʽ/ʽﹳ;Lˑʼ/ᵔٴ;)V

    iget-object v0, p2, Lˑʼ/ᵔٴ;->ⁱˊ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lʽ/ʽﹳ;->ʽ()V

    new-instance v0, Lʼﾞ/ᴵᵔ;

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v1, 0x0

    const-class v3, Lʽ/ʽﹳ;

    const-string v4, "updateEnabledCallbacks"

    const-string v5, "updateEnabledCallbacks()V"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lʼﾞ/ᴵᵔ;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    iput-object v0, p2, Lˑʼ/ᵔٴ;->ʽ:Lˊʼ/ʼˎ;

    iput-object p1, p0, Lʽ/יـ;->ʽʽ:Lʽ/ˏי;

    return-void

    :cond_0
    sget-object p1, Landroidx/lifecycle/ˉʿ;->ON_STOP:Landroidx/lifecycle/ˉʿ;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lʽ/יـ;->ʽʽ:Lʽ/ˏי;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lʽ/ˏי;->cancel()V

    return-void

    :cond_1
    sget-object p1, Landroidx/lifecycle/ˉʿ;->ON_DESTROY:Landroidx/lifecycle/ˉʿ;

    if-ne p2, p1, :cond_2

    invoke-virtual {p0}, Lʽ/יـ;->cancel()V

    :cond_2
    return-void
.end method
