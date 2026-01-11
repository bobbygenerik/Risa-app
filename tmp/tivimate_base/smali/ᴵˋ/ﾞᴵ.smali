.class public final Lᴵˋ/ﾞᴵ;
.super Lᴵי/ˏי;
.source "SourceFile"


# static fields
.field public static final ʽʽ:Lʿⁱ/ˈ;

.field public static final ᴵˊ:Lᴵˋ/ﾞᴵ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lᴵˋ/ﾞᴵ;

    invoke-direct {v0}, Lᴵי/ˏי;-><init>()V

    sput-object v0, Lᴵˋ/ﾞᴵ;->ᴵˊ:Lᴵˋ/ﾞᴵ;

    sget-object v0, Lᴵי/ٴᵢ;->ﹳٴ:Lʿⁱ/ˈ;

    sput-object v0, Lᴵˋ/ﾞᴵ;->ʽʽ:Lʿⁱ/ˈ;

    return-void
.end method


# virtual methods
.method public final ـᵎ(Lˈי/ᵔᵢ;Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lᴵˋ/ﾞᴵ;->ʽʽ:Lʿⁱ/ˈ;

    invoke-virtual {v0, p1, p2}, Lʿⁱ/ᵎﹶ;->ـᵎ(Lˈי/ᵔᵢ;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ᐧﹶ(Lˈי/ᵔᵢ;)Z
    .locals 0

    sget-object p1, Lᴵˋ/ﾞᴵ;->ʽʽ:Lʿⁱ/ˈ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
