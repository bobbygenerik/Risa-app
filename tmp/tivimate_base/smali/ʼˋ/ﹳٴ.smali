.class public final Lʼˋ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˈי/ﾞᴵ;


# static fields
.field public static final ᴵˊ:Lᵎˉ/ⁱˊ;


# instance fields
.field public final ʾˋ:Lʼˋ/ـˆ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lᵎˉ/ⁱˊ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lʼˋ/ﹳٴ;->ᴵˊ:Lᵎˉ/ⁱˊ;

    return-void
.end method

.method public constructor <init>(Lʼˋ/ـˆ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼˋ/ﹳٴ;->ʾˋ:Lʼˋ/ـˆ;

    return-void
.end method


# virtual methods
.method public final getKey()Lˈי/ᵎﹶ;
    .locals 1

    sget-object v0, Lʼˋ/ﹳٴ;->ᴵˊ:Lᵎˉ/ⁱˊ;

    return-object v0
.end method

.method public final ʿᵢ(Ljava/lang/Object;Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p2, p1, p0}, Lᴵⁱ/ʼᐧ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;
    .locals 0

    invoke-static {p0, p1}, Lcom/bumptech/glide/ˈ;->ᵔﹳ(Lˈי/ﾞᴵ;Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object p1

    return-object p1
.end method

.method public final ـˆ(Lˈי/ᵎﹶ;)Lˈי/ᵔᵢ;
    .locals 0

    invoke-static {p0, p1}, Lcom/bumptech/glide/ˈ;->ʾˋ(Lˈי/ﾞᴵ;Lˈי/ᵎﹶ;)Lˈי/ᵔᵢ;

    move-result-object p1

    return-object p1
.end method

.method public final ﹶᐧ(Lˈי/ᵔᵢ;)Lˈי/ᵔᵢ;
    .locals 0

    invoke-static {p0, p1}, Lcom/bumptech/glide/ʽ;->ˏי(Lˈי/ᵔᵢ;Lˈי/ᵔᵢ;)Lˈי/ᵔᵢ;

    move-result-object p1

    return-object p1
.end method
