.class public final Lʽ/ˏי;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʽ/ʽ;


# instance fields
.field public final ʾˋ:Lˑʼ/ᵔٴ;

.field public final synthetic ᴵˊ:Lʽ/ʽﹳ;


# direct methods
.method public constructor <init>(Lʽ/ʽﹳ;Lˑʼ/ᵔٴ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽ/ˏי;->ᴵˊ:Lʽ/ʽﹳ;

    iput-object p2, p0, Lʽ/ˏי;->ʾˋ:Lˑʼ/ᵔٴ;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 4

    .prologue
    iget-object v0, p0, Lʽ/ˏי;->ᴵˊ:Lʽ/ʽﹳ;

    iget-object v1, v0, Lʽ/ʽﹳ;->ⁱˊ:Lﹶˈ/ᵔᵢ;

    iget-object v2, p0, Lʽ/ˏי;->ʾˋ:Lˑʼ/ᵔٴ;

    invoke-virtual {v1, v2}, Lﹶˈ/ᵔᵢ;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Lʽ/ʽﹳ;->ʽ:Lˑʼ/ᵔٴ;

    invoke-static {v1, v2}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lˑʼ/ᵔٴ;->ﹳٴ()V

    iput-object v3, v0, Lʽ/ʽﹳ;->ʽ:Lˑʼ/ᵔٴ;

    :cond_0
    iget-object v0, v2, Lˑʼ/ᵔٴ;->ⁱˊ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v2, Lˑʼ/ᵔٴ;->ʽ:Lˊʼ/ʼˎ;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lᴵⁱ/ﹳٴ;->ʽ()Ljava/lang/Object;

    :cond_1
    iput-object v3, v2, Lˑʼ/ᵔٴ;->ʽ:Lˊʼ/ʼˎ;

    return-void
.end method
