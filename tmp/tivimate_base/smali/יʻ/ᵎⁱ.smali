.class public abstract Lיʻ/ᵎⁱ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ⁱˊ:Lﹳʽ/ᵢˏ;

.field public static final ﹳٴ:Lˏˑ/ⁱˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lˏˑ/ⁱˊ;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lˏˑ/ⁱˊ;-><init>(I)V

    sput-object v0, Lיʻ/ᵎⁱ;->ﹳٴ:Lˏˑ/ⁱˊ;

    new-instance v0, Lˑʿ/ˏי;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lˑʿ/ˏי;-><init>(I)V

    new-instance v1, Lﹳʽ/ᵢˏ;

    const-class v2, Lיʻ/ˉٴ;

    const-class v3, Lٴʻ/ﹳٴ;

    invoke-direct {v1, v2, v3, v0}, Lﹳʽ/ᵢˏ;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lﹳʽ/ʾˋ;)V

    sput-object v1, Lיʻ/ᵎⁱ;->ⁱˊ:Lﹳʽ/ᵢˏ;

    return-void
.end method
