.class public final Lᵢ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵢ/ⁱˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lᵢ/ᵎﹶ;

    invoke-static {v0}, Lﾞʼ/ⁱˊ;->ˑﹳ(Ljava/lang/Class;)Lﾞʼ/ﹳٴ;

    return-void
.end method


# virtual methods
.method public final ʽ(Lˎﹳ/ⁱˊ;)V
    .locals 0

    iget-object p1, p1, Lˎﹳ/ⁱˊ;->ˉˆ:Lـˎ/ˈ;

    return-void
.end method

.method public final ⁱˊ(Lᵢ/ﹳٴ;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lᵢ/ʽ;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final ﹳٴ(Lᵢ/ﹳٴ;[B)Lʼﹳ/ᵔᵢ;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method
