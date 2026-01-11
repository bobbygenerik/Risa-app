.class public final Lﹳᵢ/ˏי;
.super Lﹳᵢ/ʼᐧ;
.source "SourceFile"


# static fields
.field public static final ˑﹳ:Ljava/lang/Object;


# instance fields
.field public final ʽ:Ljava/lang/Object;

.field public final ˈ:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lﹳᵢ/ˏי;->ˑﹳ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lʽⁱ/ʼˈ;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lﹳᵢ/ʼᐧ;-><init>(Lʽⁱ/ʼˈ;)V

    iput-object p2, p0, Lﹳᵢ/ˏי;->ʽ:Ljava/lang/Object;

    iput-object p3, p0, Lﹳᵢ/ˏי;->ˈ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final ˉʿ(ILʽⁱ/ˊˋ;J)Lʽⁱ/ˊˋ;
    .locals 1

    .prologue
    iget-object v0, p0, Lﹳᵢ/ʼᐧ;->ⁱˊ:Lʽⁱ/ʼˈ;

    invoke-virtual {v0, p1, p2, p3, p4}, Lʽⁱ/ʼˈ;->ˉʿ(ILʽⁱ/ˊˋ;J)Lʽⁱ/ˊˋ;

    iget-object p1, p2, Lʽⁱ/ˊˋ;->ﹳٴ:Ljava/lang/Object;

    iget-object p3, p0, Lﹳᵢ/ˏי;->ʽ:Ljava/lang/Object;

    invoke-static {p1, p3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lʽⁱ/ˊˋ;->ᵔﹳ:Ljava/lang/Object;

    iput-object p1, p2, Lʽⁱ/ˊˋ;->ﹳٴ:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public final ⁱˊ(Ljava/lang/Object;)I
    .locals 1

    .prologue
    sget-object v0, Lﹳᵢ/ˏי;->ˑﹳ:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lﹳᵢ/ˏי;->ˈ:Ljava/lang/Object;

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    iget-object v0, p0, Lﹳᵢ/ʼᐧ;->ⁱˊ:Lʽⁱ/ʼˈ;

    invoke-virtual {v0, p1}, Lʽⁱ/ʼˈ;->ⁱˊ(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final ﾞʻ(I)Ljava/lang/Object;
    .locals 1

    .prologue
    iget-object v0, p0, Lﹳᵢ/ʼᐧ;->ⁱˊ:Lʽⁱ/ʼˈ;

    invoke-virtual {v0, p1}, Lʽⁱ/ʼˈ;->ﾞʻ(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lﹳᵢ/ˏי;->ˈ:Ljava/lang/Object;

    invoke-static {p1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lﹳᵢ/ˏי;->ˑﹳ:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public final ﾞᴵ(ILʽⁱ/ˋᵔ;Z)Lʽⁱ/ˋᵔ;
    .locals 1

    .prologue
    iget-object v0, p0, Lﹳᵢ/ʼᐧ;->ⁱˊ:Lʽⁱ/ʼˈ;

    invoke-virtual {v0, p1, p2, p3}, Lʽⁱ/ʼˈ;->ﾞᴵ(ILʽⁱ/ˋᵔ;Z)Lʽⁱ/ˋᵔ;

    iget-object p1, p2, Lʽⁱ/ˋᵔ;->ⁱˊ:Ljava/lang/Object;

    iget-object v0, p0, Lﹳᵢ/ˏי;->ˈ:Ljava/lang/Object;

    invoke-static {p1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    sget-object p1, Lﹳᵢ/ˏי;->ˑﹳ:Ljava/lang/Object;

    iput-object p1, p2, Lʽⁱ/ˋᵔ;->ⁱˊ:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method
