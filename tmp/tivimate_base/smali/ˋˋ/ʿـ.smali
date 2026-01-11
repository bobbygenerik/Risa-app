.class public final Lˋˋ/ʿـ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˈ:Lʻٴ/ˈ;


# instance fields
.field public ʽ:Lʻʿ/ˉˆ;

.field public ⁱˊ:Lʻʿ/ˉˆ;

.field public ﹳٴ:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lʻٴ/ˈ;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lʻٴ/ˈ;-><init>(I)V

    sput-object v0, Lˋˋ/ʿـ;->ˈ:Lʻٴ/ˈ;

    return-void
.end method

.method public static ﹳٴ()Lˋˋ/ʿـ;
    .locals 1

    .prologue
    sget-object v0, Lˋˋ/ʿـ;->ˈ:Lʻٴ/ˈ;

    invoke-virtual {v0}, Lʻٴ/ˈ;->ﾞᴵ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˋˋ/ʿـ;

    if-nez v0, :cond_0

    new-instance v0, Lˋˋ/ʿـ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :cond_0
    return-object v0
.end method
