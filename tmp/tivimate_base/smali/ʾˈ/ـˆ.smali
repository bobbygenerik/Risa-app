.class public final Lʾˈ/ـˆ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lʾˈ/ʼᐧ;


# instance fields
.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lʾˈ/ʼᐧ;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lʾˈ/ʼᐧ;-><init>(I)V

    sput-object v0, Lʾˈ/ـˆ;->ʽ:Lʾˈ/ʼᐧ;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʾˈ/ـˆ;->ﹳٴ:Ljava/lang/String;

    iput-object p2, p0, Lʾˈ/ـˆ;->ⁱˊ:Ljava/lang/String;

    return-void
.end method
