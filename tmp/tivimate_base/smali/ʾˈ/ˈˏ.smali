.class public final Lʾˈ/ˈˏ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:Lʾˈ/ˈˏ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lʾˈ/ˈˏ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lʾˈ/ˈˏ;->ﹳٴ:Lʾˈ/ˈˏ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ()Lʾˈ/ـﹶ;
    .locals 3

    new-instance v0, Lʾˈ/ـﹶ;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lʾˈ/ـﹶ;-><init>(J)V

    return-object v0
.end method
