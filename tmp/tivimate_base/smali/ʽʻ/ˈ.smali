.class public abstract Lʽʻ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʾˋ:Lʽʻ/ﹳٴ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    sget-object v0, Lﹳˏ/ﹳٴ;->ﹳٴ:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lʽʻ/ⁱˊ;

    invoke-direct {v0}, Lʽʻ/ⁱˊ;-><init>()V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lˊˆ/ﹳٴ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_1
    sput-object v0, Lʽʻ/ˈ;->ʾˋ:Lʽʻ/ﹳٴ;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
