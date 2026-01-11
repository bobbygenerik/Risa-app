.class public abstract Lﹳᵢ/ˊᵔ;
.super Lﹳᵢ/ˆʾ;
.source "SourceFile"


# instance fields
.field public final ᵎˊ:Lﹳᵢ/ᴵˊ;


# direct methods
.method public constructor <init>(Lﹳᵢ/ᴵˊ;)V
    .locals 0

    invoke-direct {p0}, Lﹳᵢ/ˆʾ;-><init>()V

    iput-object p1, p0, Lﹳᵢ/ˊᵔ;->ᵎˊ:Lﹳᵢ/ᴵˊ;

    return-void
.end method


# virtual methods
.method public final ʼˎ()Lʽⁱ/ʼˈ;
    .locals 1

    iget-object v0, p0, Lﹳᵢ/ˊᵔ;->ᵎˊ:Lﹳᵢ/ᴵˊ;

    invoke-interface {v0}, Lﹳᵢ/ᴵˊ;->ʼˎ()Lʽⁱ/ʼˈ;

    move-result-object v0

    return-object v0
.end method

.method public final ʽʽ(Ljava/lang/Object;Lﹳᵢ/ﹳٴ;Lʽⁱ/ʼˈ;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p3}, Lﹳᵢ/ˊᵔ;->ˊʻ(Lʽⁱ/ʼˈ;)V

    return-void
.end method

.method public final ʾˋ(JLjava/lang/Object;)J
    .locals 0

    check-cast p3, Ljava/lang/Void;

    return-wide p1
.end method

.method public ˉٴ()V
    .locals 0

    invoke-virtual {p0}, Lﹳᵢ/ˊᵔ;->ٴᵢ()V

    return-void
.end method

.method public abstract ˊʻ(Lʽⁱ/ʼˈ;)V
.end method

.method public final ˏי(Lـˊ/ᵔﹳ;)V
    .locals 0

    iput-object p1, p0, Lﹳᵢ/ˆʾ;->ٴʼ:Lـˊ/ᵔﹳ;

    const/4 p1, 0x0

    invoke-static {p1}, Lᐧˎ/ʼʼ;->ʼᐧ(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lﹳᵢ/ˆʾ;->ᵎⁱ:Landroid/os/Handler;

    invoke-virtual {p0}, Lﹳᵢ/ˊᵔ;->ˉٴ()V

    return-void
.end method

.method public final ٴᵢ()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lﹳᵢ/ˊᵔ;->ᵎˊ:Lﹳᵢ/ᴵˊ;

    invoke-virtual {p0, v0, v1}, Lﹳᵢ/ˆʾ;->ˈٴ(Ljava/lang/Integer;Lﹳᵢ/ᴵˊ;)V

    return-void
.end method

.method public final ᴵˊ(ILjava/lang/Object;)I
    .locals 0

    check-cast p2, Ljava/lang/Void;

    return p1
.end method

.method public ᴵᵔ(Lﹳᵢ/ᵢˏ;)Lﹳᵢ/ᵢˏ;
    .locals 0

    return-object p1
.end method

.method public ᵔʾ(Lʽⁱ/ᴵˊ;)V
    .locals 1

    iget-object v0, p0, Lﹳᵢ/ˊᵔ;->ᵎˊ:Lﹳᵢ/ᴵˊ;

    invoke-interface {v0, p1}, Lﹳᵢ/ᴵˊ;->ᵔʾ(Lʽⁱ/ᴵˊ;)V

    return-void
.end method

.method public final ᵢˏ(Ljava/lang/Object;Lﹳᵢ/ᵢˏ;)Lﹳᵢ/ᵢˏ;
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p2}, Lﹳᵢ/ˊᵔ;->ᴵᵔ(Lﹳᵢ/ᵢˏ;)Lﹳᵢ/ᵢˏ;

    move-result-object p1

    return-object p1
.end method

.method public final ﹳٴ()Lʽⁱ/ᴵˊ;
    .locals 1

    iget-object v0, p0, Lﹳᵢ/ˊᵔ;->ᵎˊ:Lﹳᵢ/ᴵˊ;

    invoke-interface {v0}, Lﹳᵢ/ᴵˊ;->ﹳٴ()Lʽⁱ/ᴵˊ;

    move-result-object v0

    return-object v0
.end method

.method public final ﾞᴵ()Z
    .locals 1

    iget-object v0, p0, Lﹳᵢ/ˊᵔ;->ᵎˊ:Lﹳᵢ/ᴵˊ;

    invoke-interface {v0}, Lﹳᵢ/ᴵˊ;->ﾞᴵ()Z

    move-result v0

    return v0
.end method
