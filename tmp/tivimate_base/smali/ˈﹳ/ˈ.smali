.class public abstract Lˈﹳ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:Lٴﾞ/ˆʾ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lٴﾞ/ˆʾ;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lٴﾞ/ˆʾ;-><init>(I)V

    sput-object v0, Lˈﹳ/ˈ;->ﹳٴ:Lٴﾞ/ˆʾ;

    return-void
.end method

.method public static ﹳٴ(ILˈﹳ/ﹳٴ;)Lᵢ/ﹳٴ;
    .locals 3

    new-instance v0, Lˑٴ/ˈ;

    invoke-direct {v0, p0}, Lˑٴ/ˈ;-><init>(I)V

    new-instance p0, Lᵢ/ﹳٴ;

    const/16 v1, 0x8

    sget-object v2, Lˈﹳ/ˈ;->ﹳٴ:Lٴﾞ/ˆʾ;

    invoke-direct {p0, v0, p1, v2, v1}, Lᵢ/ﹳٴ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object p0
.end method
